#include "socwssscallback.h"

enum CallbackType { LAZY, USERCUT, HEURISTIC };

OperatorCount plan_to_op_count(shared_ptr<SequenceInfo> info, int n_ops) {
    OperatorCount plan_counts(n_ops, 0);
    for (OperatorID& op_id : info->plan) {
        plan_counts[op_id.get_index()]++;
    }
    return plan_counts;
}

SharedData::SharedData(const Options& opts, shared_ptr<TaskProxy> task_proxy,
                       shared_ptr<AbstractTask> task)
    : constraint_type(opts.get<int>("constraint_type")),
      constraint_generators(opts.get<string>("constraint_generators")),
      heuristic(opts.get<string>("heuristic")),
      sat_seq(opts.get<bool>("sat_seq")),
      mip_start(opts.get<bool>("mip_start")),
      lp_solver_type(opts.get<lp::LPSolverType>("lp_solver_type")),
      cost_type(opts.get<int>("cost_type")),
      max_time(opts.get<double>("max_time")),
      bound(opts.get<int>("bound")),
      pruning(opts.get<shared_ptr<PruningMethod>>("pruning")),
      verbosity(opts.get<int>("verbosity")),
      task_proxy(task_proxy),
      task(task),
      start(chrono::system_clock::now()) {
    n_ops = task_proxy->get_operators().size();
    n_vars = task_proxy->get_variables().size();
    glcs = make_shared<vector<shared_ptr<GLC>>>();
    printer_plots = make_shared<PrinterPlots>(n_ops, n_vars, glcs, start);
}

bool SharedData::extract_sol(IloCplex::ControlCallbackI* callback, int type) {
    original_z = callback->getObjValue();
    original_x.clear();
    for (int i = 0; i < n_ops; ++i) {
        original_x.emplace_back(callback->getValue((*x)[i]));
    }

    if (original_z >= cache_op_counts.get_best_plan().second->plan_cost) {
        early_abort = true;
        callback->abort();
        return false;
    }

    rounded_x.clear();
    if (type == LAZY) {
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x), [](double i) { return lround(i); });
        rounded_z = lround(original_z);
    } else if (type == USERCUT || type == HEURISTIC) {
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x),
                  [](double i) { return lround(ceil(i)); });
        rounded_z = 0;
        for (int op_id = 0; op_id < n_ops; ++op_id) {
            rounded_z += (rounded_x[op_id] *
                          task_proxy->get_operators()[op_id].get_cost());
        }
    }

    return true;
}

bool SharedData::test_solution() {
    return (rounded_z >= 0) && all_of(rounded_x.begin(), rounded_x.end(),
                                      [](int c) { return c >= 0; });
}

bool SharedData::test_card() {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

    if (rounded_z > (1.2 * original_z) ||
        rounded_card > (1.2 * original_card)) {
        return false;
    }
    return true;
}

void SharedData::sequence() {
    cout.setstate(ios_base::failbit);
    if (sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    cout.clear();
}

void SharedData::learn(IloCplex::ControlCallbackI* callback) {
    if (!info->sequenciable) {
        printer_plots->update(rounded_z, rounded_x, c->getSize(), x->getSize());

        glcs->emplace_back(info->learned_glc);

        tie(missing_bounds, cut) = get_cut(info->learned_glc);
        if (missing_bounds > 1) {
            restart = true;
            restarts++;
            callback->abort();
        }
    }
}

pair<bool, shared_ptr<SequenceInfo>> SharedData::get_sat_sequence(
    OperatorCount op_count) {
    if (cache_op_counts.has(op_count)) {
        repeated_seqs++;
        return {true, cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH SAT..." << endl;

    seq++;
    printer_plots->show_data(seq, cplex->getBestObjValue(), repeated_seqs,
                             restarts,
                             cache_op_counts.get_best_plan().second->plan_cost);
    auto start = chrono::system_clock::now();
    auto sat_seq = PlanToMinisat(task_proxy, op_count);
    sat_seq();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    printer_plots->plot_astar_time.emplace_back(elapsed_microseconds);

    auto info = make_shared<SequenceInfo>();
    if (sat_seq.sequenciable) {
        info->plan = sat_seq.plan;
        info->plan_cost = accumulate(
            info->plan.begin(), info->plan.end(), 0,
            [&](int acc, OperatorID op_id) {
                return acc + task_proxy->get_operators()[op_id].get_cost();
            });
        info->sequenciable = true;
        cache_op_counts.add(plan_to_op_count(info, n_ops), info);
    } else {
        info->learned_glc = sat_seq.learned_glc;
        info->sequenciable = false;
        info->plan_cost = numeric_limits<int>::max();
    }

    cache_op_counts.add(op_count, info);
    return {false, info};
}

pair<bool, shared_ptr<SequenceInfo>> SharedData::get_astar_sequence(
    long f_bound, OperatorCount op_count) {
    if (cache_op_counts.has(op_count)) {
        repeated_seqs++;
        return {true, cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH A*..." << endl;

    Options opts;
    shared_ptr<Evaluator> h;

    if (heuristic.find("blind") != string::npos) {
        cout << "USING BLIND HEURISTIC" << endl;
        Options opts_h;
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);
        h = make_shared<BlindSearchHeuristic>(opts_h);
    } else if (heuristic.find("lmcut") != string::npos) {
        cout << "USING LMCUT HEURISTIC" << endl;
        Options opts_h;
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);
        h = make_shared<LandmarkCutHeuristic>(opts_h);
    } else if (heuristic.find("operatorcounting") != string::npos) {
        cout << "USING OPERATOR COUNT HEURISTIC" << endl;
        vector<shared_ptr<ConstraintGenerator>> cs;

        if (constraint_generators.find("seq") != string::npos) {
            cout << "USING SEQ CONSTRAINT GENERATOR" << endl;
            Options o;
            o.set("use_safety_improvement", true);
            o.set("use_only_upper_bounds", false);
            shared_ptr<ConstraintGenerator> c =
                make_shared<StateEquationConstraints>(o);
            cs.emplace_back(c);
        }
        if (constraint_generators.find("landmarks") != string::npos) {
            cout << "USING LANDMARK CONSTRAINT GENERATOR" << endl;
            shared_ptr<ConstraintGenerator> c = make_shared<LMCutConstraints>();
            cs.emplace_back(c);
        }
        if (constraint_generators.find("h+") != string::npos) {
            cout << "USING H+ CONSTRAINT GENERATOR" << endl;
            Options o;
            o.set("use_time_vars", true);
            o.set("use_integer_vars", false);
            shared_ptr<ConstraintGenerator> c =
                make_shared<DeleteRelaxationConstraints>(o);
            cs.emplace_back(c);
        }
        if (constraint_generators.find("flow") != string::npos) {
            cout << "USING FLOW CONSTRAINT GENERATOR" << endl;
            Options o_p;
            o_p.set("pattern_max_size", 1);
            o_p.set("only_interesting_patterns", true);
            shared_ptr<PatternCollectionGenerator> patterns =
                make_shared<PatternCollectionGeneratorSystematic>(o_p);
            Options o;
            o.set("patterns", patterns);
            o.set("remove_dead_states", true);
            o.set("single_transition_optimization", true);
            o.set("self_loop_optimization", true);
            o.set("weak_linking_constraints", true);
            o.set("use_mutexes", true);
            o.set("partial_merges", true);
            o.set("max_merge_feature_size", 2);
            o.set("partial_merge_time_limit",
                  numeric_limits<double>::infinity());
            o.set("merge_lp_solve_time_limit",
                  numeric_limits<double>::infinity());
            shared_ptr<ConstraintGenerator> c = make_shared<FlowConstraints>(o);
            cs.emplace_back(c);
        }
        if (constraint_generators.find("glcs") != string::npos) {
            cout << "USING GLCS CONSTRAINT GENERATOR" << endl;
            shared_ptr<ConstraintGenerator> c =
                make_shared<GLCSConstraints>(glcs, op_count);
            cs.emplace_back(c);
        }

        if (cs.empty()) {
            cout << "CONSTRAINT GENERATORS NOT FOUND" << endl;
            utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }

        Options opts_h;
        opts_h.set("constraint_generators", cs);
        opts_h.set("lpsolver", 1);
        opts_h.set("use_integer_op_counts", false);
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);
        opts_h.set("socwsss", true);
        h = make_shared<OperatorCountingHeuristic>(opts_h);
    } else {
        cout << "HEURISTIC " << heuristic << " NOT FOUND" << endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }

    opts.set("eval", h);
    opts.set("cost_type", cost_type);
    opts.set("max_time", max_time);
    opts.set("bound", bound);
    opts.set("pruning", pruning);
    opts.set("verbosity", verbosity);
    auto temp = search_common::create_astar_open_list_factory_and_f_eval(opts);
    opts.set("open", temp.first);
    opts.set("f_eval", temp.second);
    opts.set("reopen_closed", true);
    vector<shared_ptr<Evaluator>> preferred_list;
    opts.set("preferred", preferred_list);

    opts.set("initial_op_count", op_count);
    opts.set("f_bound", f_bound);
    opts.set("constraint_type", constraint_type);

    seq++;
    printer_plots->show_data(seq, cplex->getBestObjValue(), repeated_seqs,
                             restarts,
                             cache_op_counts.get_best_plan().second->plan_cost);
    auto astar = make_shared<soc_astar_search::SOCAStarSearch>(opts);
    auto start = chrono::system_clock::now();
    astar->search();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    printer_plots->plot_max_f_found.emplace_back(astar->max_f_found);
    printer_plots->plot_astar_time.emplace_back(elapsed_microseconds);
    printer_plots->plot_nodes_expanded.emplace_back(
        astar->get_statistics().get_expanded());

    auto info = make_shared<SequenceInfo>();
    if (astar->found_solution()) {
        info->plan = astar->get_plan();
        info->plan_cost = accumulate(
            info->plan.begin(), info->plan.end(), 0,
            [&](int acc, OperatorID op_id) {
                return acc + task_proxy->get_operators()[op_id].get_cost();
            });
        info->sequenciable = true;
        cache_op_counts.add(plan_to_op_count(info, n_ops), info);
    } else {
        info->learned_glc = astar->learned_glc;
        info->sequenciable = false;
        info->plan_cost = numeric_limits<int>::max();
    }

    cache_op_counts.add(op_count, info);
    return {false, info};
}

pair<int, IloExpr> SharedData::get_cut(shared_ptr<GLC> learned_glc) {
    int missing_bounds = 0;
    IloExpr cut((*env));

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = (*bounds_literals)[n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * (*x)[n_ops];
        }
    }

    for (auto& [op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = (*bounds_literals)[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * (*x)[op_id];
        }
    }

    return {missing_bounds, cut};
}

void SharedData::log(IloCplex::ControlCallbackI* callback, int type) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    switch (type) {
        case LAZY:
            cerr << "IN LAZY CONSTRAINT CALLBACK" << endl;
            break;
        case USERCUT:
            cerr << "IN USER CUT CALLBACK" << endl;
            break;
        case HEURISTIC:
            cerr << "IN HEURISTIC CALLBACK" << endl;
            break;
    }
    cerr << "SEQ: " << seq << endl;
    cerr << "START: " << restarts << endl;
    cerr << "NODE ID: " << callback->getNodeId() << endl;
    cerr << "INCUMBENT: " << callback->getIncumbentObjValue() << endl;
    cerr << "Z: " << original_z << endl;
    cerr << "F-BOUND: " << rounded_z << endl;
    cerr << accumulate(rounded_x.begin(), rounded_x.end(), 0)
         << " OPERATORS AVAILABLE: " << endl;
    for (int op_id = 0; op_id < n_ops; ++op_id) {
        if (rounded_x[op_id] > 0) {
            cerr << "\t[" << rounded_x[op_id] << "] ("
                 << task_proxy->get_operators()[op_id].get_cost() << ") "
                 << task_proxy->get_operators()[op_id].get_name() << endl;
        }
    }
    cerr << "IN CACHE? " << found_in_cache << endl;
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (info->sequenciable) {
        cerr << "PLAN COST: " << info->plan_cost << endl;
        cerr << "PLAN:" << endl;
        for (OperatorID op_id : info->plan) {
            cerr << "\t("
                 << task_proxy->get_operators()[op_id.get_index()].get_cost()
                 << ") "
                 << task_proxy->get_operators()[op_id.get_index()].get_name()
                 << endl;
        }
    } else {
        if (type == LAZY || type == USERCUT) {
            if (info->learned_glc != nullptr) {
                cerr << "LEARNED GLC (" << glcs->size() << ") WITH "
                     << info->learned_glc->get_num_bounds()
                     << " BOUNDS:" << endl;
                if (info->learned_glc->yt_bound != -1) {
                    cerr << "\t[YT >= " << info->learned_glc->yt_bound << "]"
                         << endl;
                }
                for (auto i : info->learned_glc->ops_bounds) {
                    cerr << "\t["
                         << task_proxy->get_operators()[i.first].get_name()
                         << " >= " << i.second << "]" << endl;
                }
            } else {
                cerr << "NULL LEARNED GLC" << endl;
            }
        }
    }
    cerr << string(80, '*') << endl;
}

void SharedData::post_best_solution(IloCplex::HeuristicCallbackI* callback) {
    auto [found, info] = cache_op_counts.get_best_plan();
    if (found && info->sequenciable) {
        OperatorCount plan_counts = plan_to_op_count(info, n_ops);

        IloNumVarArray vars(callback->getEnv());
        IloNumArray lb(callback->getEnv());
        IloNumArray ub(callback->getEnv());

        for (int i = 0; i < n_ops; ++i) {
            vars.add((*x)[i]);
            lb.add(plan_counts[i]);
            ub.add(plan_counts[i]);
        }

        callback->setBounds(vars, lb, ub);
        callback->solve();

        vars.clear();
        for (int i = 0; i < x->getSize(); ++i) {
            vars.add((*x)[i]);
        }
        IloNumArray vals(callback->getEnv());
        callback->getValues(vals, vars);
        IloNumArray rounded_vals(callback->getEnv());
        for (int i = 0; i < vars.getSize(); ++i) {
            vals[i] = abs(vals[i]);
            rounded_vals.add(ceil(abs(vals[i])));
        }

        if (callback->getObjValue() < callback->getIncumbentObjValue()) {
            cerr << "POSTING SOLUTION WITH COST: " << info->plan_cost << endl;
            cerr << "ROUNDED: ";
            for (int i = 0; i < rounded_vals.getSize(); ++i) {
                cerr << rounded_vals[i] << " ";
            }
            cerr << endl;

            cerr << "ORIGINAL: ";
            for (int i = 0; i < vals.getSize(); ++i) {
                cerr << vals[i] << " ";
            }
            cerr << endl;

            callback->setSolution(vars, rounded_vals);
        }
    }
}

void LazyCallbackI::main() {
    if (shared_data->extract_sol(this, LAZY) && shared_data->test_solution() &&
        shared_data->test_card()) {
        shared_data->sequence();
        shared_data->learn(this);
        if (!shared_data->info->sequenciable) {
            add(shared_data->cut >= 1.0);
        }
        shared_data->log(this, LAZY);
    }
}

IloCplex::Callback LazyCallback(IloEnv env,
                                shared_ptr<SharedData> shared_data) {
    return (IloCplex::Callback(new (env) LazyCallbackI(env, shared_data)));
}

void UserCutCallbackI::main() {
    if (isAfterCutLoop()) {
        if (shared_data->extract_sol(this, USERCUT) &&
            shared_data->test_solution() && shared_data->test_card()) {
            shared_data->sequence();
            shared_data->learn(this);
            if (!shared_data->info->sequenciable) {
                add(shared_data->cut >= 1.0);
            }
            shared_data->log(this, USERCUT);
        }
    }
}

IloCplex::Callback UserCutCallback(IloEnv env,
                                   shared_ptr<SharedData> shared_data) {
    return (IloCplex::Callback(new (env) UserCutCallbackI(env, shared_data)));
}

void HeuristicCallbackI::main() {
    if (shared_data->extract_sol(this, HEURISTIC) &&
        shared_data->test_solution() && shared_data->test_card()) {
        shared_data->sequence();
        shared_data->log(this, HEURISTIC);
        shared_data->post_best_solution(this);
    }
}

IloCplex::Callback HeuristicCallback(IloEnv env,
                                     shared_ptr<SharedData> shared_data) {
    return (IloCplex::Callback(new (env) HeuristicCallbackI(env, shared_data)));
}

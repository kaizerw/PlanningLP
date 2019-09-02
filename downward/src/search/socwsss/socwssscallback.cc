#include "socwssscallback.h"

OperatorCount plan_to_op_count(shared_ptr<SequenceInfo> info, int n_ops) {
    OperatorCount plan_counts(n_ops, 0);
    for (OperatorID &op_id : info->plan) {
        plan_counts[op_id.get_index()]++;
    }
    return plan_counts;
}

/*
SOCWSSSCallback::SOCWSSSCallback(const Options &opts,
                                 shared_ptr<TaskProxy> task_proxy,
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

pair<double, vector<double>> SOCWSSSCallback::extract_sol(const Context &ctxt) {
    double original_z = 0;
    vector<double> original_x;

    if (ctxt.inRelaxation()) {
        original_z = ctxt.getRelaxationObjective();
        for (int i = 0; i < n_ops; ++i) {
            original_x.emplace_back(ctxt.getRelaxationPoint((*x)[i]));
        }
    } else if (ctxt.inCandidate()) {
        original_z = ctxt.getCandidateObjective();
        for (int i = 0; i < n_ops; ++i) {
            original_x.emplace_back(ctxt.getCandidatePoint((*x)[i]));
        }
    }

    return {original_z, original_x};
}

pair<long, OperatorCount> SOCWSSSCallback::round_sol(
    const Context &ctxt, double original_z, vector<double> &original_x) {
    long rounded_z = 0;
    OperatorCount rounded_x;

    if (ctxt.inRelaxation()) {
        rounded_z = round(original_z);
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x),
                  [](double i) { return (long)ceil(i); });
    } else if (ctxt.inCandidate()) {
        rounded_z = (long)original_z;
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x), [](double i) { return (long)i; });
    }

    return {rounded_z, rounded_x};
}

bool SOCWSSSCallback::test_solution(const Context &ctxt, long rounded_z,
                                    OperatorCount &rounded_x) {
    bool ret = (rounded_z >= 0);
    ret = (ret && all_of(rounded_x.begin(), rounded_x.end(),
                         [](int c) { return c >= 0; }));
    if (!ret && ctxt.inCandidate()) {
        ctxt.rejectCandidate();
    }
    return ret;
}

bool SOCWSSSCallback::test_card(const Context &ctxt, double original_z,
                                vector<double> &original_x, long rounded_z,
                                OperatorCount &rounded_x) {
    if (ctxt.inRelaxation()) {
        double original_card =
            accumulate(original_x.begin(), original_x.end(), 0.0);
        int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

        rounded_z = 0;
        for (int op_id = 0; op_id < n_ops; ++op_id) {
            rounded_z += (rounded_x[op_id] *
                          task_proxy->get_operators()[op_id].get_cost());
        }

        if (rounded_z > (1.1 * original_z) ||
            rounded_card > (1.1 * original_card)) {
            return false;
        }
    }
    return true;
}

pair<int, IloExpr> SOCWSSSCallback::get_cut(shared_ptr<GLC> learned_glc) {
    int missing_bounds = 0;
    IloExpr cut((*env));

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = (*bounds_literals)[n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += (*x)[(*bounds_literals)[n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * (*x)[n_ops];
        }
    }

    for (auto &[op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = (*bounds_literals)[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += (*x)[(*bounds_literals)[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * (*x)[op_id];
        }
    }

    return {missing_bounds, cut};
}

pair<bool, shared_ptr<SequenceInfo>> SOCWSSSCallback::get_sat_sequence(
    OperatorCount op_count) {
    if (cache_op_counts.has(op_count)) {
        repeated_seqs++;
        return {true, cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH SAT..." << endl;

    seq++;
    printer_plots->show_data(seq, cplex->getBestObjValue(), repeated_seqs,
                             restarts,
                             cache_op_counts.get_min_plan().second->plan_cost);
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

pair<bool, shared_ptr<SequenceInfo>> SOCWSSSCallback::get_astar_sequence(
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
                             cache_op_counts.get_min_plan().second->plan_cost);
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

void SOCWSSSCallback::log(const Context &ctxt, long rounded_z,
                          double original_z, OperatorCount &rounded_x,
                          bool found_in_cache, shared_ptr<SequenceInfo> info) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    cerr << "SEQ: " << seq << endl;
    cerr << "START: " << restarts << endl;
    cerr << "NODE COUNT: "
         << ctxt.getIntInfo(IloCplex::Callback::Context::Info::NodeCount)
         << endl;
    cerr << "INCUMBENT: "
         << ctxt.getDoubleInfo(IloCplex::Callback::Context::Info::BestSolution)
         << endl;
    cerr << "IN CANDIDATE? " << (bool)ctxt.inCandidate() << endl;
    cerr << "IN RELAXATION? " << (bool)ctxt.inRelaxation() << endl;
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

    if (info->sequenciable) {
        cerr << "SEQUENCIABLE" << endl;
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
        cerr << "NOT SEQUENCIABLE" << endl;
        if (info->learned_glc != nullptr) {
            cerr << "LEARNED GLC (" << glcs->size() << ") WITH "
                 << info->learned_glc->get_num_bounds() << " BOUNDS:" << endl;
            if (info->learned_glc->yt_bound != -1) {
                cerr << "\t[YT >= " << info->learned_glc->yt_bound << "]"
                     << endl;
            }
            for (auto i : info->learned_glc->ops_bounds) {
                cerr << "\t[" << task_proxy->get_operators()[i.first].get_name()
                     << " >= " << i.second << "]" << endl;
            }
        } else {
            cerr << "NULL LEARNED GLC" << endl;
        }
    }
    cerr << string(80, '*') << endl;
}

void SOCWSSSCallback::sequence(const Context &ctxt, long rounded_z,
                               double original_z, OperatorCount &rounded_x) {
    cout.setstate(ios_base::failbit);
    bool found_in_cache = false;
    shared_ptr<SequenceInfo> info;
    if (sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    cout.clear();

    log(ctxt, rounded_z, original_z, rounded_x, found_in_cache, info);

    if (info->sequenciable) {
        post_current_best_plan(ctxt);
    } else {
        printer_plots->update(rounded_z, rounded_x, c->getSize(), x->getSize());

        bool glc_in_cache = (info->learned_glc == nullptr);

        for (auto glc : (*glcs)) {
            if (info->learned_glc != nullptr &&
                (*info->learned_glc) == (*glc)) {
                glc_in_cache = true;
                break;
            }
        }

        if (glc_in_cache) {
            if (ctxt.inCandidate()) {
                ctxt.rejectCandidate();
            }
        } else {
            if (constraint_type == 0 && !sat_seq) {
                if (ctxt.inCandidate()) {
                    ctxt.rejectCandidate();
                }
                return;
            }

            glcs->emplace_back(info->learned_glc);

            auto [missing_bounds, cut] = get_cut(info->learned_glc);
            if (missing_bounds > 1) {
                restart = true;
                restarts++;
                ctxt.abort();
            }

            if (ctxt.inRelaxation()) {
                ctxt.addUserCut(cut >= 1.0, IloCplex::UseCutForce, IloFalse);
            } else if (ctxt.inCandidate()) {
                ctxt.rejectCandidate(cut >= 1.0);
            }
        }
    }
}

void SOCWSSSCallback::post_current_best_plan(const Context &ctxt) {
    auto [found, info] = cache_op_counts.get_min_plan();
    if (found && info->sequenciable) {
        OperatorCount plan_counts = plan_to_op_count(info, n_ops);

        IloNumVarArray vars((*env));
        IloNumArray values((*env));
        for (int i = 0; i < x->getSize(); ++i) {
            if (i < n_ops) {
                vars.add((*x)[i]);
                values.add(plan_counts[i]);
            }
        }

        cerr << "POSTING SOLUTION WITH COST: " << info->plan_cost << endl;
        for (int i = 0; i < x->getSize(); ++i) {
            if (i < n_ops) {
                cerr << values[i] << " ";
            }
        }
        cerr << endl;
        ctxt.postHeuristicSolution(vars, values, info->plan_cost,
                                   Context::SolutionStrategy::Propagate);
    }
}

void SOCWSSSCallback::invoke(const Context &ctxt) {
    post_current_best_plan(ctxt);

    if (ctxt.inCandidate() && ctxt.isCandidateRay()) {
        ctxt.rejectCandidate();
        return;
    }

    if (ctxt.inRelaxation() || ctxt.inCandidate()) {
        auto [original_z, original_x] = extract_sol(ctxt);
        auto [rounded_z, rounded_x] = round_sol(ctxt, original_z, original_x);

        if (test_solution(ctxt, rounded_z, rounded_x) &&
            test_card(ctxt, original_z, original_x, rounded_z, rounded_x)) {
            sequence(ctxt, rounded_z, original_z, rounded_x);
        }
    }
}
*/

Goal GoalCallbackI::duplicateGoal() {
    GoalBaseI *retgoal;
    CPXNEW(retgoal, new GoalCallbackI(getEnv(), shared_data));
    return retgoal;
}

pair<double, vector<double>> GoalCallbackI::extract_sol() {
    double original_z = 0;
    vector<double> original_x;

    original_z = getObjValue();
    for (int i = 0; i < shared_data->n_ops; ++i) {
        original_x.emplace_back(getValue((*shared_data->x)[i]));
    }

    return {original_z, original_x};
}

pair<long, OperatorCount> GoalCallbackI::round_sol(double original_z,
                                                   vector<double> &original_x) {
    long rounded_z = 0;
    OperatorCount rounded_x;

    if (isIntegerFeasible()) {
        rounded_z = (long)original_z;
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x), [](double i) { return (long)i; });
    } else {
        rounded_z = round(original_z);
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x),
                  [](double i) { return (long)ceil(i); });
    }

    return {rounded_z, rounded_x};
}

bool GoalCallbackI::test_solution(long rounded_z, OperatorCount &rounded_x) {
    bool ret = (rounded_z >= 0);
    ret = (ret && all_of(rounded_x.begin(), rounded_x.end(),
                         [](int c) { return c >= 0; }));
    if (!ret && isIntegerFeasible()) {
        // REJECT CANDIDATE
    }
    return ret;
}

bool GoalCallbackI::test_card(double original_z, vector<double> &original_x,
                              long rounded_z, OperatorCount &rounded_x) {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

    rounded_z = 0;
    for (int op_id = 0; op_id < shared_data->n_ops; ++op_id) {
        rounded_z +=
            (rounded_x[op_id] *
             shared_data->task_proxy->get_operators()[op_id].get_cost());
    }

    if (rounded_z > (1.1 * original_z) ||
        rounded_card > (1.1 * original_card)) {
        return false;
    }
    return true;
}

pair<int, IloExpr> GoalCallbackI::get_cut(shared_ptr<GLC> learned_glc) {
    int missing_bounds = 0;
    IloExpr cut((*shared_data->env));

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound =
        (*shared_data->bounds_literals)[shared_data->n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += (*shared_data->x)[(
                *shared_data->bounds_literals)[shared_data->n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * (*shared_data->x)[shared_data->n_ops];
        }
    }

    for (auto &[op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = (*shared_data->bounds_literals)[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += (*shared_data
                         ->x)[(*shared_data->bounds_literals)[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * (*shared_data->x)[op_id];
        }
    }

    return {missing_bounds, cut};
}

pair<bool, shared_ptr<SequenceInfo>> GoalCallbackI::get_sat_sequence(
    OperatorCount op_count) {
    if (shared_data->cache_op_counts.has(op_count)) {
        shared_data->repeated_seqs++;
        return {true, shared_data->cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH SAT..." << endl;

    shared_data->seq++;
    shared_data->printer_plots->show_data(
        shared_data->seq, shared_data->cplex->getBestObjValue(),
        shared_data->repeated_seqs, shared_data->restarts,
        shared_data->cache_op_counts.get_min_plan().second->plan_cost);
    auto start = chrono::system_clock::now();
    auto sat_seq = PlanToMinisat(shared_data->task_proxy, op_count);
    sat_seq();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    shared_data->printer_plots->plot_astar_time.emplace_back(
        elapsed_microseconds);

    auto info = make_shared<SequenceInfo>();
    if (sat_seq.sequenciable) {
        info->plan = sat_seq.plan;
        info->plan_cost = accumulate(
            info->plan.begin(), info->plan.end(), 0,
            [&](int acc, OperatorID op_id) {
                return acc + shared_data->task_proxy->get_operators()[op_id]
                                 .get_cost();
            });
        info->sequenciable = true;
        shared_data->cache_op_counts.add(
            plan_to_op_count(info, shared_data->n_ops), info);
    } else {
        info->learned_glc = sat_seq.learned_glc;
        info->sequenciable = false;
        info->plan_cost = numeric_limits<int>::max();
    }

    shared_data->cache_op_counts.add(op_count, info);
    return {false, info};
}

pair<bool, shared_ptr<SequenceInfo>> GoalCallbackI::get_astar_sequence(
    long f_bound, OperatorCount op_count) {
    if (shared_data->cache_op_counts.has(op_count)) {
        shared_data->repeated_seqs++;
        return {true, shared_data->cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH A*..." << endl;

    Options opts;
    shared_ptr<Evaluator> h;

    if (shared_data->heuristic.find("blind") != string::npos) {
        cout << "USING BLIND HEURISTIC" << endl;
        Options opts_h;
        opts_h.set("transform", shared_data->task);
        opts_h.set("cache_estimates", true);
        h = make_shared<BlindSearchHeuristic>(opts_h);
    } else if (shared_data->heuristic.find("lmcut") != string::npos) {
        cout << "USING LMCUT HEURISTIC" << endl;
        Options opts_h;
        opts_h.set("transform", shared_data->task);
        opts_h.set("cache_estimates", true);
        h = make_shared<LandmarkCutHeuristic>(opts_h);
    } else if (shared_data->heuristic.find("operatorcounting") !=
               string::npos) {
        cout << "USING OPERATOR COUNT HEURISTIC" << endl;
        vector<shared_ptr<ConstraintGenerator>> cs;

        if (shared_data->constraint_generators.find("seq") != string::npos) {
            cout << "USING SEQ CONSTRAINT GENERATOR" << endl;
            Options o;
            o.set("use_safety_improvement", true);
            o.set("use_only_upper_bounds", false);
            shared_ptr<ConstraintGenerator> c =
                make_shared<StateEquationConstraints>(o);
            cs.emplace_back(c);
        }
        if (shared_data->constraint_generators.find("landmarks") !=
            string::npos) {
            cout << "USING LANDMARK CONSTRAINT GENERATOR" << endl;
            shared_ptr<ConstraintGenerator> c = make_shared<LMCutConstraints>();
            cs.emplace_back(c);
        }
        if (shared_data->constraint_generators.find("h+") != string::npos) {
            cout << "USING H+ CONSTRAINT GENERATOR" << endl;
            Options o;
            o.set("use_time_vars", true);
            o.set("use_integer_vars", false);
            shared_ptr<ConstraintGenerator> c =
                make_shared<DeleteRelaxationConstraints>(o);
            cs.emplace_back(c);
        }
        if (shared_data->constraint_generators.find("flow") != string::npos) {
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
        if (shared_data->constraint_generators.find("glcs") != string::npos) {
            cout << "USING GLCS CONSTRAINT GENERATOR" << endl;
            shared_ptr<ConstraintGenerator> c =
                make_shared<GLCSConstraints>(shared_data->glcs, op_count);
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
        opts_h.set("transform", shared_data->task);
        opts_h.set("cache_estimates", true);
        opts_h.set("socwsss", true);
        h = make_shared<OperatorCountingHeuristic>(opts_h);
    } else {
        cout << "HEURISTIC " << shared_data->heuristic << " NOT FOUND" << endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }

    opts.set("eval", h);
    opts.set("cost_type", shared_data->cost_type);
    opts.set("max_time", shared_data->max_time);
    opts.set("bound", shared_data->bound);
    opts.set("pruning", shared_data->pruning);
    opts.set("verbosity", shared_data->verbosity);
    auto temp = search_common::create_astar_open_list_factory_and_f_eval(opts);
    opts.set("open", temp.first);
    opts.set("f_eval", temp.second);
    opts.set("reopen_closed", true);
    vector<shared_ptr<Evaluator>> preferred_list;
    opts.set("preferred", preferred_list);

    opts.set("initial_op_count", op_count);
    opts.set("f_bound", f_bound);
    opts.set("constraint_type", shared_data->constraint_type);

    shared_data->seq++;
    shared_data->printer_plots->show_data(
        shared_data->seq, shared_data->cplex->getBestObjValue(),
        shared_data->repeated_seqs, shared_data->restarts,
        shared_data->cache_op_counts.get_min_plan().second->plan_cost);
    auto astar = make_shared<soc_astar_search::SOCAStarSearch>(opts);
    auto start = chrono::system_clock::now();
    astar->search();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    shared_data->printer_plots->plot_max_f_found.emplace_back(
        astar->max_f_found);
    shared_data->printer_plots->plot_astar_time.emplace_back(
        elapsed_microseconds);
    shared_data->printer_plots->plot_nodes_expanded.emplace_back(
        astar->get_statistics().get_expanded());

    auto info = make_shared<SequenceInfo>();
    if (astar->found_solution()) {
        info->plan = astar->get_plan();
        info->plan_cost = accumulate(
            info->plan.begin(), info->plan.end(), 0,
            [&](int acc, OperatorID op_id) {
                return acc + shared_data->task_proxy->get_operators()[op_id]
                                 .get_cost();
            });
        info->sequenciable = true;
        shared_data->cache_op_counts.add(
            plan_to_op_count(info, shared_data->n_ops), info);
    } else {
        info->learned_glc = astar->learned_glc;
        info->sequenciable = false;
        info->plan_cost = numeric_limits<int>::max();
    }

    shared_data->cache_op_counts.add(op_count, info);
    return {false, info};
}

void GoalCallbackI::log(long rounded_z, double original_z,
                        OperatorCount &rounded_x, bool found_in_cache,
                        shared_ptr<SequenceInfo> info) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    cerr << "SEQ: " << shared_data->seq << endl;
    cerr << "START: " << shared_data->restarts << endl;
    cerr << "NODE COUNT: " << getNnodes() << endl;
    cerr << "INCUMBENT: " << getIncumbentObjValue() << endl;
    cerr << "IN CANDIDATE? " << (bool)isIntegerFeasible() << endl;
    cerr << "IN RELAXATION? " << (bool)(!isIntegerFeasible()) << endl;
    cerr << "Z: " << original_z << endl;
    cerr << "F-BOUND: " << rounded_z << endl;
    cerr << accumulate(rounded_x.begin(), rounded_x.end(), 0)
         << " OPERATORS AVAILABLE: " << endl;
    for (int op_id = 0; op_id < shared_data->n_ops; ++op_id) {
        if (rounded_x[op_id] > 0) {
            cerr << "\t[" << rounded_x[op_id] << "] ("
                 << shared_data->task_proxy->get_operators()[op_id].get_cost()
                 << ") "
                 << shared_data->task_proxy->get_operators()[op_id].get_name()
                 << endl;
        }
    }
    cerr << "IN CACHE? " << found_in_cache << endl;

    if (info->sequenciable) {
        cerr << "SEQUENCIABLE" << endl;
        cerr << "PLAN COST: " << info->plan_cost << endl;
        cerr << "PLAN:" << endl;
        for (OperatorID op_id : info->plan) {
            cerr << "\t("
                 << shared_data->task_proxy->get_operators()[op_id.get_index()]
                        .get_cost()
                 << ") "
                 << shared_data->task_proxy->get_operators()[op_id.get_index()]
                        .get_name()
                 << endl;
        }
    } else {
        cerr << "NOT SEQUENCIABLE" << endl;
        if (info->learned_glc != nullptr) {
            cerr << "LEARNED GLC (" << shared_data->glcs->size() << ") WITH "
                 << info->learned_glc->get_num_bounds() << " BOUNDS:" << endl;
            if (info->learned_glc->yt_bound != -1) {
                cerr << "\t[YT >= " << info->learned_glc->yt_bound << "]"
                     << endl;
            }
            for (auto i : info->learned_glc->ops_bounds) {
                cerr << "\t["
                     << shared_data->task_proxy->get_operators()[i.first]
                            .get_name()
                     << " >= " << i.second << "]" << endl;
            }
        } else {
            cerr << "NULL LEARNED GLC" << endl;
        }
    }
    cerr << string(80, '*') << endl;
}

void GoalCallbackI::sequence(long rounded_z, double original_z,
                             OperatorCount &rounded_x) {
    cout.setstate(ios_base::failbit);
    bool found_in_cache = false;
    shared_ptr<SequenceInfo> info;
    if (shared_data->sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    cout.clear();

    log(rounded_z, original_z, rounded_x, found_in_cache, info);

    if (info->sequenciable) {
        post_current_best_plan();
    } else {
        shared_data->printer_plots->update(rounded_z, rounded_x,
                                           shared_data->c->getSize(),
                                           shared_data->x->getSize());

        bool glc_in_cache = (info->learned_glc == nullptr);

        for (auto glc : (*shared_data->glcs)) {
            if (info->learned_glc != nullptr &&
                (*info->learned_glc) == (*glc)) {
                glc_in_cache = true;
                break;
            }
        }

        if (glc_in_cache) {
            // IF CANDIDATE THEN REJECT
        } else {
            if (shared_data->constraint_type == 0 && !shared_data->sat_seq) {
                // IF CANDIDATE THEN REJECT
                return;
            }

            shared_data->glcs->emplace_back(info->learned_glc);

            auto [missing_bounds, cut] = get_cut(info->learned_glc);
            if (missing_bounds > 1) {
                shared_data->restart = true;
                shared_data->restarts++;
                abort();
            }

            // ADD GLOBAL CUT "cut >= 1.0"
        }
    }
}

void GoalCallbackI::post_current_best_plan() {
    auto [found, info] = shared_data->cache_op_counts.get_min_plan();
    if (found && info->sequenciable) {
        OperatorCount plan_counts = plan_to_op_count(info, shared_data->n_ops);

        IloNumVarArray vars(getEnv());
        IloNumArray values(getEnv());
        for (int i = 0; i < shared_data->x->getSize(); ++i) {
            if (i < shared_data->n_ops) {
                vars.add((*shared_data->x)[i]);
                values.add(plan_counts[i]);
            }
        }

        cerr << "POSTING SOLUTION WITH COST: " << info->plan_cost << endl;
        for (int i = 0; i < shared_data->x->getSize(); ++i) {
            if (i < shared_data->n_ops) {
                cerr << values[i] << " ";
            }
        }
        cerr << endl;
        // ctxt.postHeuristicSolution(vars, values, info->plan_cost,
        //                           Context::SolutionStrategy::Propagate);
        // POST SOLUTION
    }
}

Goal GoalCallbackI::execute() {
    Goal goal = this;

    auto [original_z, original_x] = extract_sol();
    auto [rounded_z, rounded_x] = round_sol(original_z, original_x);

    if (test_solution(rounded_z, rounded_x) &&
        test_card(original_z, original_x, rounded_z, rounded_x)) {
        sequence(rounded_z, original_z, rounded_x);
    }

    return 0;
}

Goal GoalCallback(IloEnv env, shared_ptr<SharedData> shared_data) {
    GoalBaseI *retgoal;
    CPXNEW(retgoal, new GoalCallbackI(env, shared_data));
    return retgoal;
}

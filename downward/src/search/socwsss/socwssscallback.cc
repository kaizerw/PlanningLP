#include "socwssscallback.h"

enum CallbackType { LAZY, USERCUT, HEURISTIC };

Shared::Shared(const Options& opts, shared_ptr<TaskProxy> task_proxy,
               shared_ptr<AbstractTask> task)
    : opts(opts),
      constraint_type(opts.get<int>("constraint_type")),
      constraint_generators(opts.get<string>("constraint_generators")),
      heuristic(opts.get<string>("heuristic")),
      mip_start(opts.get<bool>("mip_start")),
      sat_seq(opts.get<bool>("sat_seq")),
      recost(opts.get<bool>("recost")),
      hstar(opts.get<bool>("hstar")),
      callbacks(opts.get<string>("callbacks")),
      task_proxy(task_proxy),
      ops(task_proxy->get_operators()),
      vars(task_proxy->get_variables()),
      task(task),
      start(chrono::system_clock::now()) {
    n_ops = task_proxy->get_operators().size();
    n_vars = task_proxy->get_variables().size();
    glcs = make_shared<vector<shared_ptr<GLC>>>();
    printer_plots = make_shared<PrinterPlots>(n_ops, n_vars, glcs, start);
}

bool Shared::extract_sol(IloCplex::ControlCallbackI* callback) {
    original_x.clear();
    for (int i = 0; i < n_ops; ++i) {
        original_x.emplace_back(callback->getValue((*x)[i]));
    }

    original_z = callback->getObjValue();

    rounded_x.clear();
    transform(original_x.begin(), original_x.end(), back_inserter(rounded_x),
              [](double i) { return lround(ceil(i - 0.01)); });

    rounded_z = opcount2cost(rounded_x);

    return true;
}

bool Shared::test_card() {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

    if (rounded_z > (1.2 * original_z) ||
        rounded_card > (1.2 * original_card)) {
        return false;
    }
    return true;
}

void Shared::sequence() {
    // cout.setstate(ios_base::failbit);
    if (sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    // cout.clear();
    printer_plots->update(rounded_z, rounded_x, c->getSize(), x->getSize());
}

pair<bool, shared_ptr<SequenceInfo>> Shared::get_sat_sequence(
    OperatorCount op_count) {
    if (cache_op_counts.has(op_count)) {
        repeated_seqs++;
        if (!cache_op_counts[op_count]->sequenciable) {
            repeated_glc =
                cache_glcs.add(cache_op_counts[op_count]->learned_glc);
        }
        return {true, cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH SAT..." << endl;

    seq++;
    printer_plots->show_data(seq, cplex->getBestObjValue(), repeated_seqs,
                             restarts,
                             cache_op_counts.get_best_plan().second->plan_cost);
    auto start = chrono::system_clock::now();
    auto sat_solver = PlanToMinisat(task_proxy, op_count);
    sat_solver();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    printer_plots->plot_astar_time.emplace_back(elapsed_microseconds);

    auto info = make_shared<SequenceInfo>();
    if (sat_solver.sequenciable) {
        info->plan = sat_solver.plan;
        info->plan_cost = plan2cost(info->plan);
        info->sequenciable = true;
        cache_op_counts.add(plan2opcount(info), info);
    } else {
        info->learned_glc = sat_solver.learned_glc;
        glcs->emplace_back(info->learned_glc);
        repeated_glc = cache_glcs.add(info->learned_glc);
        info->sequenciable = false;
        info->plan_cost = numeric_limits<int>::max();
    }

    cache_op_counts.add(op_count, info);
    return {false, info};
}

pair<bool, shared_ptr<SequenceInfo>> Shared::get_astar_sequence(
    long f_bound, OperatorCount op_count) {
    if (cache_op_counts.has(op_count)) {
        repeated_seqs++;
        if (!cache_op_counts[op_count]->sequenciable) {
            repeated_glc =
                cache_glcs.add(cache_op_counts[op_count]->learned_glc);
        }
        return {true, cache_op_counts[op_count]};
    }

    cout << "SEQUENCING WITH A*..." << endl;

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

    Options opts_astar(opts);
    opts_astar.set("eval", h);
    auto temp =
        search_common::create_astar_open_list_factory_and_f_eval(opts_astar);
    opts_astar.set("open", temp.first);
    opts_astar.set("f_eval", temp.second);
    opts_astar.set("reopen_closed", true);
    vector<shared_ptr<Evaluator>> preferred_list;
    opts_astar.set("preferred", preferred_list);

    opts_astar.set("initial_op_count", op_count);
    opts_astar.set("f_bound", f_bound);
    opts_astar.set("constraint_type", constraint_type);

    seq++;
    printer_plots->show_data(seq, cplex->getBestObjValue(), repeated_seqs,
                             restarts,
                             cache_op_counts.get_best_plan().second->plan_cost);
    auto astar = make_shared<soc_astar_search::SOCAStarSearch>(opts_astar);
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
        info->plan_cost = plan2cost(info->plan);
        info->sequenciable = true;
        cache_op_counts.add(plan2opcount(info), info);
    } else {
        info->learned_glc = astar->learned_glc;
        glcs->emplace_back(info->learned_glc);
        repeated_glc = cache_glcs.add(info->learned_glc);
        info->sequenciable = false;
        info->plan_cost = numeric_limits<int>::max();
    }

    cache_op_counts.add(op_count, info);
    return {false, info};
}

IloExpr Shared::get_cut(shared_ptr<GLC> learned_glc,
                        IloCplex::ControlCallbackI* callback) {
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

    if (missing_bounds > 1) {
        restart = true;
        callback->abort();
    }

    return cut;
}

void Shared::log(IloCplex::ControlCallbackI* callback, int type) {
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
    cerr << "BEST OBJ VALUE: " << callback->getBestObjValue() << endl;
    cerr << "MIP GAP: " << callback->getMIPRelativeGap() << endl;
    cerr << "Z: " << original_z << endl;
    cerr << "F-BOUND: " << rounded_z << endl;
    cerr << accumulate(rounded_x.begin(), rounded_x.end(), 0)
         << " OPERATORS AVAILABLE: " << endl;
    for (int op_id = 0; op_id < n_ops; ++op_id) {
        if (rounded_x[op_id] > 0) {
            cerr << "\t[" << rounded_x[op_id] << "] ("
                 << get_op_cost(ops[op_id]) << ") " << ops[op_id].get_name()
                 << endl;
        }
    }
    cerr << "OP COUNT IN CACHE? " << found_in_cache << endl;
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (info->sequenciable) {
        cerr << "PLAN COST: " << info->plan_cost << endl;
        cerr << "PLAN:" << endl;
        for (OperatorID op_id : info->plan) {
            cerr << "\t(" << get_op_cost(ops[op_id.get_index()]) << ") "
                 << ops[op_id.get_index()].get_name() << endl;
        }
    } else {
        cerr << "LEARNED GLC WITH " << info->learned_glc->get_num_bounds()
             << " BOUNDS:" << endl;
        if (info->learned_glc->yt_bound != -1) {
            cerr << "\t[YT >= " << info->learned_glc->yt_bound << "]" << endl;
        }
        for (auto i : info->learned_glc->ops_bounds) {
            cerr << "\t[" << ops[i.first].get_name() << " >= " << i.second
                 << "]" << endl;
        }
        cerr << "REPEATED GLC? " << repeated_glc << endl;

        cerr << endl;
        cerr << "Implied bound cuts: "
             << callback->getNcuts(IloCplex::CutType::CutImplBd) << endl;
        cerr << "Zero-half cuts: "
             << callback->getNcuts(IloCplex::CutType::CutZeroHalf) << endl;
        cerr << "Gomory fractional cuts: "
             << callback->getNcuts(IloCplex::CutType::CutFrac) << endl;
        cerr << "User cuts: " << callback->getNcuts(IloCplex::CutType::CutUser)
             << endl;
        cerr << "CUT: " << (get_cut(info->learned_glc, callback) >= 1) << endl;
        cerr << endl;
    }
    cerr << string(80, '*') << endl;
}

void Shared::post_best_plan(IloCplex::HeuristicCallbackI* callback) {
    auto [found, info] = cache_op_counts.get_best_plan();
    if (found && info->sequenciable &&
        info->plan_cost < callback->getIncumbentObjValue()) {
        OperatorCount plan_counts = plan2opcount(info);

        lp::LPSolver lp_solver(lp::LPSolverType(opts.get_enum("lpsolver")));

        vector<lp::LPVariable> local_variables;
        vector<lp::LPConstraint> local_constraints;

        copy(lp_variables->begin(), lp_variables->end(),
             back_inserter(local_variables));
        copy(lp_constraints->begin(), lp_constraints->end(),
             back_inserter(local_constraints));

        for (lp::LPVariable& variable : local_variables) {
            variable.is_integer = true;
        }

        for (int i = 0; i < n_ops; ++i) {
            local_variables[i].lower_bound = plan_counts[i];
            local_variables[i].upper_bound = plan_counts[i];
        }
        if (sat_seq) {
            local_variables[n_ops].lower_bound = info->plan.size();
            local_variables[n_ops].upper_bound = info->plan.size();
        } else {
            local_variables[n_ops].lower_bound = info->plan_cost;
            local_variables[n_ops].upper_bound = info->plan_cost;
        }

        for (auto& [glc, in_lp] : cache_glcs.cache) {
            if (in_lp) {
                lp::LPConstraint constraint(1.0, lp_solver.get_infinity());

                int yt_bound = glc->yt_bound;
                int last_yt_bound = (*bounds_literals)[n_ops].size() - 1;

                if (yt_bound > 0) {
                    if (yt_bound <= last_yt_bound) {
                        constraint.insert((*bounds_literals)[n_ops][yt_bound],
                                          1.0);
                    } else {
                        constraint.insert(n_ops, (1.0 / yt_bound));
                    }
                }

                for (auto& [op_id, op_bound] : glc->ops_bounds) {
                    int last_op_bound = (*bounds_literals)[op_id].size() - 1;

                    if (op_bound <= last_op_bound) {
                        constraint.insert((*bounds_literals)[op_id][op_bound],
                                          1.0);
                    } else {
                        constraint.insert(op_id, (1.0 / op_bound));
                    }
                }

                local_constraints.emplace_back(constraint);
            }
        }

        lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, local_variables,
                               local_constraints);

        lp_solver.solve_mip();

        vector<double> primal = lp_solver.extract_solution();

        IloNumVarArray vars(callback->getEnv());
        IloNumArray vals(callback->getEnv());

        for (int i = 0; i < x->getSize(); ++i) {
            vars.add((*x)[i]);
            vals.add(primal[i]);
        }

        callback->setSolution(vars, vals, info->plan_cost);

        vars.end();
        vals.end();
    }
}

OperatorCount Shared::plan2opcount(shared_ptr<SequenceInfo> info) {
    OperatorCount plan_counts(n_ops, 0);
    for (OperatorID& op_id : info->plan) {
        plan_counts[op_id.get_index()]++;
    }
    return plan_counts;
}

long Shared::opcount2cost(OperatorCount& op_count) {
    long cost = 0;
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        cost += (op_count[op_id] * get_op_cost(ops[op_id]));
    }
    return cost;
}

long Shared::plan2cost(Plan& plan) {
    return accumulate(plan.begin(), plan.end(), 0,
                      [&](int acc, OperatorID op_id) {
                          return acc + get_op_cost(ops[op_id]);
                      });
}

double Shared::get_op_cost(OperatorProxy op) {
    if (recost && sat_seq) {
        return max((double)op.get_cost(), epsilon);
    }
    return op.get_cost();
}

void LazyCallbackI::main() {
    if (shared->restart) {
        return;
    }
    if (isUnboundedNode()) {
        return;
    }
    if (shared->extract_sol(this) && shared->test_card()) {
        shared->sequence();
        if (!shared->info->sequenciable) {
            auto cut = shared->get_cut(shared->info->learned_glc, this);
            if (shared->restart) {
                return;
            }
            add(cut >= 1.0).end();
            shared->cache_glcs.set(shared->info->learned_glc, true);
        }
        // shared->log(this, LAZY);
    }
}

IloCplex::Callback LazyCallback(IloEnv env, shared_ptr<Shared> shared) {
    return (IloCplex::Callback(new (env) LazyCallbackI(env, shared)));
}

void UserCutCallbackI::main() {
    if (shared->restart) {
        return;
    }
    if (isAfterCutLoop()) {
        if (shared->extract_sol(this) && shared->test_card()) {
            shared->sequence();
            // shared->log(this, USERCUT);
        }
        for (auto& [glc, in_lp] : shared->cache_glcs.cache) {
            if (!in_lp) {
                auto cut = shared->get_cut(glc, this);
                if (shared->restart) {
                    return;
                }
                add(cut >= 1.0).end();
                shared->cache_glcs.set(glc, true);
            }
        }
    }
}

IloCplex::Callback UserCutCallback(IloEnv env, shared_ptr<Shared> shared) {
    return (IloCplex::Callback(new (env) UserCutCallbackI(env, shared)));
}

void HeuristicCallbackI::main() {
    if (shared->extract_sol(this) && shared->test_card()) {
        shared->sequence();
        // shared->log(this, HEURISTIC);
    }
    shared->post_best_plan(this);
}

IloCplex::Callback HeuristicCallback(IloEnv env, shared_ptr<Shared> shared) {
    return (IloCplex::Callback(new (env) HeuristicCallbackI(env, shared)));
}

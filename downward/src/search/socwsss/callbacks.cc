#include "callbacks.h"

Shared::Shared(const Options& opts, shared_ptr<TaskProxy> task_proxy,
               shared_ptr<AbstractTask> task)
    : opts(opts),
      task_proxy(task_proxy),
      ops(task_proxy->get_operators()),
      vars(task_proxy->get_variables()),
      task(task),
      start(chrono::system_clock::now()),
      restart(false),
      restarts(0),
      seq(0),
      repeated_seqs(0),
      epsilon(0.0),
      yt_index(ops.size()),
      yf_index(ops.size() + 1),
      glcs(make_shared<vector<shared_ptr<GLC>>>()),
      printer(make_shared<Printer>(ops.size(), vars.size(), glcs, start)) {
    if (opts.get<string>("heuristic").find("hstar_pdb") != string::npos) {
        vector<int> pattern;
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            pattern.emplace_back(var_id);
        }

        Options opts_pattern;
        opts_pattern.set("pattern", pattern);
        shared_ptr<pdbs::PatternGenerator> pattern_generator =
            make_shared<pdbs::PatternGeneratorManual>(opts_pattern);

        Options opts_h;
        opts_h.set("pattern", pattern_generator);
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);

        full_pdb = make_shared<pdbs::PDBHeuristic>(opts_h);
    }

    if (opts.get<bool>("minimal_seq")) {
        Options opts_h;
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);

        shared_ptr<Evaluator> h = make_shared<LandmarkCutHeuristic>(opts_h);

        Options opts_astar(opts);
        opts_astar.set("eval", h);
        auto temp = search_common::create_astar_open_list_factory_and_f_eval(
            opts_astar);
        opts_astar.set("open", temp.first);
        opts_astar.set("f_eval", temp.second);
        opts_astar.set("reopen_closed", true);
        vector<shared_ptr<Evaluator>> preferred_list;
        opts_astar.set("preferred", preferred_list);

        auto astar = make_shared<AStarOptimalPlansSearch>(opts_astar);
        astar->search();
        optimal_plans = astar->optimal_plans;
    }
}

void Shared::extract_sol(IloCplex::ControlCallbackI* callback) {
    original_x.clear();
    for (size_t i = 0; i < ops.size(); ++i) {
        original_x.emplace_back(callback->getValue((*x)[i]));
    }
    original_z = callback->getObjValue();

    rounded_x.clear();
    transform(original_x.begin(), original_x.end(), back_inserter(rounded_x),
              [](double i) { return lround(ceil(i - 0.01)); });
    rounded_z = opcount2cost(rounded_x);
}

void Shared::extract_sol() {
    original_x.clear();
    for (size_t i = 0; i < ops.size(); ++i) {
        original_x.emplace_back(cplex->getValue((*x)[i]));
    }
    original_z = cplex->getObjValue();

    rounded_x.clear();
    transform(original_x.begin(), original_x.end(), back_inserter(rounded_x),
              [](double i) { return lround(ceil(i - 0.01)); });
    rounded_z = opcount2cost(rounded_x);
}

bool Shared::test_card() {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    long rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0L);

    return (rounded_z <= (1.2 * original_z) &&
            rounded_card <= (1.2 * original_card));
}

void Shared::sequence() {
    found_in_cache = false;
    if (cache_op_counts.has(rounded_x)) {
        repeated_seqs++;
        if (!cache_op_counts[rounded_x]->sequenciable) {
            repeated_glc =
                cache_glcs.add(cache_op_counts[rounded_x]->learned_glc);
        }
        found_in_cache = true;
        info = cache_op_counts[rounded_x];
    }

    if (!found_in_cache) {
        // cout.setstate(ios_base::failbit);
        if (opts.get<bool>("best_seq")) {
            info = get_best_sequence();
        } else if (opts.get<bool>("sat_seq")) {
            info = get_sat_sequence();
        } else if (opts.get<bool>("minimal_seq")) {
            info = get_minimal_sequence();
        } else {
            info = get_astar_sequence();
        }
        // cout.clear();

        if (info->sequenciable) {
            cache_op_counts.add(plan2opcount(info->plan), info);
        } else {
            glcs->emplace_back(info->learned_glc);
            repeated_glc = cache_glcs.add(info->learned_glc);
        }
        cache_op_counts.add(rounded_x, info);
    }
    printer->update(rounded_z, rounded_x, c->getSize(), x->getSize());
}

shared_ptr<SequenceInfo> Shared::get_minimal_sequence() {
    auto info_sat = get_sat_sequence();

    auto ret = make_shared<SequenceInfo>();
    if (info_sat->sequenciable) {
        ret = info_sat;
    } else {
        IloEnv env2;
        IloModel model2(env2);
        IloNumVarArray x2(env2);
        IloRangeArray c2(env2);
        IloObjective obj2(env2);

        for (OperatorProxy op : ops) {
            x2.add(IloNumVar(env2, 0.0, 1.0, ILOINT));
            obj2.setLinearCoef(x2[op.get_id()], 1.0);
        }

        for (Plan plan : optimal_plans) {
            IloRange range(env2, 1.0, IloInfinity);
            for (OperatorID op_id : plan) {
                range.setLinearCoef(x2[op_id.get_index()], 1.0);
            }
            c2.add(range);
        }

        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            if (rounded_x[op_id] > 0) x2[op_id].setUB(0.0);
        }

        model2.add(obj2);
        model2.add(c2);
        IloCplex cplex2(model2);

        cplex2.solve();

        ret->learned_glc = make_shared<GLC>();
        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            long v = lround(ceil(cplex2.getValue(x2[op_id]) - 0.01));
            if (v > 0) ret->learned_glc->add_op_bound(op_id, v);
        }
    }

    return ret;
}

shared_ptr<SequenceInfo> Shared::get_best_sequence() {
    auto info_sat = get_sat_sequence();

    auto ret = make_shared<SequenceInfo>();
    if (info_sat->sequenciable) {
        ret = info_sat;
    } else {
        auto info_astar = get_astar_sequence();

        int sat_bounds = info_sat->learned_glc->get_num_bounds();
        int astar_bounds = info_astar->learned_glc->get_num_bounds();

        cut_sat = get_cut(info_sat->learned_glc);
        cut_astar = get_cut(info_astar->learned_glc);

        bool astar_is_better = (astar_bounds < sat_bounds);
        ret = (astar_is_better ? info_astar : info_sat);

        printer->total_learned_glcs++;
        printer->total_astar_is_better += (int)(astar_is_better);
    }

    return ret;
}

shared_ptr<SequenceInfo> Shared::get_sat_sequence() {
    cout << "SEQUENCING WITH SAT..." << endl;

    seq++;
    printer->show_data(seq, cplex->getBestObjValue(), repeated_seqs, restarts,
                       cache_op_counts.get_best_plan().second->plan_cost);
    auto start = chrono::system_clock::now();
    auto sat_solver = SATSeq(opts, task_proxy, rounded_x);
    sat_solver();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    printer->plot_astar_time.emplace_back(elapsed_microseconds);

    auto ret = make_shared<SequenceInfo>();
    if (sat_solver.sequenciable) {
        ret->sequenciable = true;
        ret->learned_glc = nullptr;
        ret->plan = sat_solver.plan;
        ret->plan_cost = plan2cost(ret->plan);
    } else {
        ret->sequenciable = false;
        ret->learned_glc = sat_solver.learned_glc;
        ret->plan = Plan();
        ret->plan_cost = numeric_limits<int>::max();
    }

    return ret;
}

shared_ptr<SequenceInfo> Shared::get_astar_sequence() {
    cout << "SEQUENCING WITH A*..." << endl;

    shared_ptr<Evaluator> h;

    if (opts.get<string>("heuristic").find("hstar_pdb") != string::npos) {
        cout << "USING H* HEURISTIC FROM FULL PDB" << endl;
        h = full_pdb;
    } else if (opts.get<string>("heuristic").find("blind") != string::npos) {
        cout << "USING BLIND HEURISTIC" << endl;
        Options opts_h;
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);
        h = make_shared<BlindSearchHeuristic>(opts_h);
    } else if (opts.get<string>("heuristic").find("lmcut") != string::npos) {
        cout << "USING LMCUT HEURISTIC" << endl;
        Options opts_h;
        opts_h.set("transform", task);
        opts_h.set("cache_estimates", true);
        h = make_shared<LandmarkCutHeuristic>(opts_h);
    } else if (opts.get<string>("heuristic").find("operatorcounting") !=
               string::npos) {
        cout << "USING OPERATOR COUNT HEURISTIC" << endl;
        vector<shared_ptr<ConstraintGenerator>> cs;

        if (opts.get<string>("constraint_generators").find("seq") !=
            string::npos) {
            cout << "USING SEQ CONSTRAINT GENERATOR" << endl;
            Options o;
            o.set("use_safety_improvement", true);
            o.set("use_only_upper_bounds", false);
            shared_ptr<ConstraintGenerator> c =
                make_shared<StateEquationConstraints>(o);
            cs.emplace_back(c);
        }
        if (opts.get<string>("constraint_generators").find("landmarks") !=
            string::npos) {
            cout << "USING LANDMARK CONSTRAINT GENERATOR" << endl;
            shared_ptr<ConstraintGenerator> c = make_shared<LMCutConstraints>();
            cs.emplace_back(c);
        }
        if (opts.get<string>("constraint_generators").find("h+") !=
            string::npos) {
            cout << "USING H+ CONSTRAINT GENERATOR" << endl;
            Options o;
            o.set("use_time_vars", true);
            o.set("use_integer_vars", false);
            shared_ptr<ConstraintGenerator> c =
                make_shared<DeleteRelaxationConstraints>(o);
            cs.emplace_back(c);
        }
        if (opts.get<string>("constraint_generators").find("flow") !=
            string::npos) {
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
        if (opts.get<string>("constraint_generators").find("glcs") !=
            string::npos) {
            cout << "USING GLCS CONSTRAINT GENERATOR" << endl;
            shared_ptr<ConstraintGenerator> c =
                make_shared<GLCSConstraints>(glcs, rounded_x);
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
        cout << "HEURISTIC " << opts.get<string>("heuristic") << " NOT FOUND"
             << endl;
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

    opts_astar.set("initial_op_count", rounded_x);
    opts_astar.set("f_bound", rounded_z);

    seq++;
    printer->show_data(seq, cplex->getBestObjValue(), repeated_seqs, restarts,
                       cache_op_counts.get_best_plan().second->plan_cost);
    auto astar = make_shared<AStarSeq>(opts_astar);
    auto start = chrono::system_clock::now();
    astar->search();
    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    printer->plot_max_f_found.emplace_back(astar->max_f_found);
    printer->plot_astar_time.emplace_back(elapsed_microseconds);
    printer->plot_nodes_expanded.emplace_back(
        astar->get_statistics().get_expanded());

    auto ret = make_shared<SequenceInfo>();
    if (astar->found_solution()) {
        ret->sequenciable = true;
        ret->learned_glc = nullptr;
        ret->plan = astar->get_plan();
        ret->plan_cost = plan2cost(ret->plan);
    } else {
        ret->sequenciable = false;
        ret->learned_glc = astar->learned_glc;
        ret->plan = Plan();
        ret->plan_cost = numeric_limits<int>::max();
    }

    return ret;
}

IloExpr Shared::get_cut(shared_ptr<GLC> learned_glc,
                        IloCplex::ControlCallbackI* callback) {
    int missing_bounds = 0;
    IloExpr cut((*env));

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = (*bounds_literals)[yt_index].size() - 1;
    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[yt_index][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * (*x)[yt_index];
        }
    }

    int yf_bound = learned_glc->yf_bound;
    int last_yf_bound = (*bounds_literals)[yf_index].size() - 1;
    if (yf_bound > 0) {
        if (yf_bound <= last_yf_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[yf_index][yf_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yf_bound) * (*x)[yf_index];
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

IloExpr Shared::get_cut(shared_ptr<GLC> learned_glc) {
    IloExpr cut((*env));

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = (*bounds_literals)[yt_index].size() - 1;
    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[yt_index][yt_bound]];
        } else {
            cut += (1.0 / yt_bound) * (*x)[yt_index];
        }
    }

    int yf_bound = learned_glc->yf_bound;
    int last_yf_bound = (*bounds_literals)[yf_index].size() - 1;
    if (yf_bound > 0) {
        if (yf_bound <= last_yf_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[yf_index][yf_bound]];
        } else {
            cut += (1.0 / yf_bound) * (*x)[yf_index];
        }
    }

    for (auto& [op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = (*bounds_literals)[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += 1.0 * (*x)[(*bounds_literals)[op_id][op_bound]];
        } else {
            cut += (1.0 / op_bound) * (*x)[op_id];
        }
    }

    return cut;
}

void Shared::log(IloCplex::ControlCallbackI* callback, CallbackType type) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    switch (type) {
        case CallbackType::LAZY:
            cerr << "IN LAZY CONSTRAINT CALLBACK" << endl;
            break;
        case CallbackType::USERCUT:
            cerr << "IN USER CUT CALLBACK" << endl;
            break;
        case CallbackType::HEURISTIC:
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
    cerr << accumulate(rounded_x.begin(), rounded_x.end(), 0L)
         << " OPERATORS AVAILABLE: " << endl;
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        if (rounded_x[op_id] > 0) {
            cerr << "\t[" << rounded_x[op_id] << "] ("
                 << get_op_cost(ops[op_id]) << ") " << ops[op_id].get_name()
                 << endl;
        }
    }
    cerr << "OP COUNT IN CACHE? " << found_in_cache << endl;
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (!found_in_cache) {
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
                cerr << "\t[YT >= " << info->learned_glc->yt_bound << "]"
                     << endl;
            }
            if (info->learned_glc->yf_bound != -1) {
                cerr << "\t[YF >= " << info->learned_glc->yf_bound << "]"
                     << endl;
            }
            for (auto i : info->learned_glc->ops_bounds) {
                cerr << "\t[" << ops[i.first].get_name() << " >= " << i.second
                     << "]" << endl;
            }
            cerr << endl;
            if (opts.get<bool>("best_seq")) {
                cerr << "SAT CUT:\t" << (cut_sat >= 1) << endl;
                cerr << "ASTAR CUT:\t" << (cut_astar >= 1) << endl;
                cerr << endl;
            }
            cerr << "REPEATED GLC? " << repeated_glc << endl;
            cerr << "ADDED CUT: " << (get_cut(info->learned_glc, callback) >= 1)
                 << endl;
        }
    }
    cerr << string(80, '*') << endl;
}

void Shared::log() {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    cerr << "SEQ: " << seq << endl;
    cerr << "START: " << restarts << endl;
    cerr << "Z: " << original_z << endl;
    cerr << "F-BOUND: " << rounded_z << endl;
    cerr << accumulate(rounded_x.begin(), rounded_x.end(), 0L)
         << " OPERATORS AVAILABLE: " << endl;
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        if (rounded_x[op_id] > 0) {
            cerr << "\t[" << rounded_x[op_id] << "] ("
                 << get_op_cost(ops[op_id]) << ") " << ops[op_id].get_name()
                 << endl;
        }
    }
    cerr << "OP COUNT IN CACHE? " << found_in_cache << endl;
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (!found_in_cache) {
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
                cerr << "\t[YT >= " << info->learned_glc->yt_bound << "]"
                     << endl;
            }
            if (info->learned_glc->yf_bound != -1) {
                cerr << "\t[YF >= " << info->learned_glc->yf_bound << "]"
                     << endl;
            }
            for (auto i : info->learned_glc->ops_bounds) {
                cerr << "\t[" << ops[i.first].get_name() << " >= " << i.second
                     << "]" << endl;
            }
            cerr << endl;
            if (opts.get<bool>("best_seq")) {
                cerr << "SAT CUT:\t" << (cut_sat >= 1) << endl;
                cerr << "ASTAR CUT:\t" << (cut_astar >= 1) << endl;
                cerr << endl;
            }
            cerr << "REPEATED GLC? " << repeated_glc << endl;
            cerr << "ADDED CUT: " << (get_cut(info->learned_glc) >= 1) << endl;
        }
    }
    cerr << string(80, '*') << endl;
}

void Shared::post_best_plan(IloCplex::HeuristicCallbackI* callback) {
    auto [found, info] = cache_op_counts.get_best_plan();
    if (found && info->sequenciable &&
        info->plan_cost < callback->getIncumbentObjValue()) {
        OperatorCount plan_counts = plan2opcount(info->plan);

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

        for (size_t i = 0; i < ops.size(); ++i) {
            local_variables[i].lower_bound = plan_counts[i];
            local_variables[i].upper_bound = plan_counts[i];
        }
        if (opts.get<bool>("sat_seq")) {
            local_variables[yt_index].lower_bound = info->plan.size();
            local_variables[yt_index].upper_bound = info->plan.size();
        } else {
            local_variables[yf_index].lower_bound = info->plan_cost;
            local_variables[yf_index].upper_bound = info->plan_cost;
        }

        for (auto& [glc, state] : cache_glcs.cache) {
            if (state != GLCState::NEW) {
                lp::LPConstraint constraint(1.0, lp_solver.get_infinity());

                int yt_bound = glc->yt_bound;
                int last_yt_bound = (*bounds_literals)[yt_index].size() - 1;
                if (yt_bound > 0) {
                    if (yt_bound <= last_yt_bound) {
                        constraint.insert(
                            (*bounds_literals)[yt_index][yt_bound], 1.0);
                    } else {
                        constraint.insert(yt_index, (1.0 / yt_bound));
                    }
                }

                int yf_bound = glc->yf_bound;
                int last_yf_bound = (*bounds_literals)[yf_index].size() - 1;
                if (yf_bound > 0) {
                    if (yf_bound <= last_yf_bound) {
                        constraint.insert(
                            (*bounds_literals)[yf_index][yf_bound], 1.0);
                    } else {
                        constraint.insert(yf_index, (1.0 / yf_bound));
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

OperatorCount Shared::plan2opcount(Plan plan) {
    OperatorCount plan_counts(ops.size(), 0);
    for (OperatorID& op_id : plan) {
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
    if (opts.get<bool>("recost") && opts.get<bool>("sat_seq")) {
        return max((double)op.get_cost(), epsilon);
    }
    return op.get_cost();
}

void Shared::step_mip_loop() {
    cplex->solve();
    if (cplex->getStatus() != IloAlgorithm::Status::Optimal) return;

    extract_sol();
    if (!test_card()) return;

    sequence();
    if (!info->sequenciable) {
        cache_glcs.set(info->learned_glc, GLCState::ADDED_AS_LAZY_AND_USERCUT);
        restart = true;
    }
    log();
}

void LazyCallbackI::main() {
    if (shr->restart) return;
    if (isUnboundedNode()) return;

    shr->extract_sol(this);
    if (!shr->test_card()) return;

    shr->sequence();
    if (!shr->info->sequenciable) {
        auto cut = shr->get_cut(shr->info->learned_glc, this);
        if (shr->restart) return;
        add(cut >= 1.0).end();
        shr->cache_glcs.set(shr->info->learned_glc, GLCState::ADDED_AS_LAZY);
    }
    shr->log(this, CallbackType::LAZY);
}

IloCplex::Callback LazyCallback(shared_ptr<Shared> shr) {
    return (IloCplex::Callback(new (*shr->env) LazyCallbackI(shr)));
}

void UserCutCallbackI::main() {
    if (shr->restart) return;
    if (!isAfterCutLoop()) return;

    shr->extract_sol(this);
    if (!shr->test_card()) return;

    shr->sequence();
    if (!shr->info->sequenciable) {
        auto cut = shr->get_cut(shr->info->learned_glc, this);
        if (shr->restart) return;
        add(cut >= 1.0).end();
        shr->cache_glcs.set(shr->info->learned_glc, GLCState::ADDED_AS_USERCUT);
    }
    shr->log(this, CallbackType::USERCUT);
}

IloCplex::Callback UserCutCallback(shared_ptr<Shared> shr) {
    return (IloCplex::Callback(new (*shr->env) UserCutCallbackI(shr)));
}

void HeuristicCallbackI::main() {
    if (shr->restart) return;

    shr->extract_sol(this);
    if (shr->test_card()) {
        shr->sequence();
        shr->log(this, CallbackType::HEURISTIC);
    }

    shr->post_best_plan(this);
}

IloCplex::Callback HeuristicCallback(shared_ptr<Shared> shr) {
    return (IloCplex::Callback(new (*shr->env) HeuristicCallbackI(shr)));
}

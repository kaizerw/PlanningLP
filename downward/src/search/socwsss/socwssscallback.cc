#include "socwssscallback.h"

OperatorCount plan_to_op_count(shared_ptr<SequenceInfo> info, int n_ops) {
    OperatorCount plan_counts(n_ops, 0);
    for (OperatorID &op_id : info->plan) {
        plan_counts[op_id.get_index()]++;
    }
    return plan_counts;
}

////////////////////////////////////////////////////////////////////////////////

void LazyCallbackI::extract_sol() {
    original_z = getObjValue();
    original_x.clear();
    for (int i = 0; i < shared_data->n_ops; ++i) {
        original_x.emplace_back(getValue((*shared_data->x)[i]));
    }
}

void LazyCallbackI::round_sol() {
    rounded_x.clear();
    rounded_z = round(original_z);
    transform(original_x.begin(), original_x.end(), back_inserter(rounded_x),
              [](double i) { return (long)ceil(i); });
}

bool LazyCallbackI::test_solution() {
    return (rounded_z >= 0) && all_of(rounded_x.begin(), rounded_x.end(),
                                      [](int c) { return c >= 0; });
}

bool LazyCallbackI::test_card() {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

    long calc_rounded_z = 0;
    for (int op_id = 0; op_id < shared_data->n_ops; ++op_id) {
        calc_rounded_z +=
            (rounded_x[op_id] *
             shared_data->task_proxy->get_operators()[op_id].get_cost());
    }

    if (calc_rounded_z > (1.1 * original_z) ||
        rounded_card > (1.1 * original_card)) {
        return false;
    }
    return true;
}

void LazyCallbackI::sequence() {
    cout.setstate(ios_base::failbit);
    bool found_in_cache = false;
    shared_ptr<SequenceInfo> info;
    if (shared_data->sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    cout.clear();

    log(found_in_cache, info);

    if (!info->sequenciable) {
        shared_data->printer_plots->update(rounded_z, rounded_x,
                                           shared_data->c->getSize(),
                                           shared_data->x->getSize());

        shared_data->glcs->emplace_back(info->learned_glc);

        auto [missing_bounds, cut] = get_cut(info->learned_glc);
        if (missing_bounds > 1) {
            shared_data->restart = true;
            shared_data->restarts++;
            abort();
        }

        add(cut >= 1.0);
    }
}

pair<bool, shared_ptr<SequenceInfo>> LazyCallbackI::get_sat_sequence(
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

pair<bool, shared_ptr<SequenceInfo>> LazyCallbackI::get_astar_sequence(
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

void LazyCallbackI::log(bool found_in_cache, shared_ptr<SequenceInfo> info) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    cerr << "IN LAZY CONSTRAINT CALLBACK" << endl;
    cerr << "SEQ: " << shared_data->seq << endl;
    cerr << "START: " << shared_data->restarts << endl;
    cerr << "NODE ID: " << getNodeId() << endl;
    cerr << "INCUMBENT: " << getIncumbentObjValue() << endl;
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
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (info->sequenciable) {
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

pair<int, IloExpr> LazyCallbackI::get_cut(shared_ptr<GLC> learned_glc) {
    auto env = (*shared_data->env);
    auto bl = (*shared_data->bounds_literals);
    auto n_ops = shared_data->n_ops;
    auto x = (*shared_data->x);

    int missing_bounds = 0;
    IloExpr cut(env);

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = bl[n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += 1.0 * x[bl[n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * x[n_ops];
        }
    }

    for (auto &[op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = bl[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += 1.0 * x[bl[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * x[op_id];
        }
    }

    return {missing_bounds, cut};
}

void LazyCallbackI::main() {
    extract_sol();
    round_sol();

    // if (test_solution() && test_card()) {
    sequence();
    //}
}

IloCplex::Callback LazyCallback(IloEnv env,
                                shared_ptr<SharedData> shared_data) {
    return (IloCplex::Callback(new (env) LazyCallbackI(env, shared_data)));
}

////////////////////////////////////////////////////////////////////////////////

void UserCutCallbackI::extract_sol() {
    original_z = getObjValue();
    original_x.clear();
    for (int i = 0; i < shared_data->n_ops; ++i) {
        original_x.emplace_back(getValue((*shared_data->x)[i]));
    }
}

void UserCutCallbackI::round_sol() {
    rounded_x.clear();
    rounded_z = round(original_z);
    transform(original_x.begin(), original_x.end(), back_inserter(rounded_x),
              [](double i) { return (long)ceil(i); });
}

bool UserCutCallbackI::test_solution() {
    return (rounded_z >= 0) && all_of(rounded_x.begin(), rounded_x.end(),
                                      [](int c) { return c >= 0; });
}

bool UserCutCallbackI::test_card() {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

    long calc_rounded_z = 0;
    for (int op_id = 0; op_id < shared_data->n_ops; ++op_id) {
        calc_rounded_z +=
            (rounded_x[op_id] *
             shared_data->task_proxy->get_operators()[op_id].get_cost());
    }

    if (calc_rounded_z > (1.1 * original_z) ||
        rounded_card > (1.1 * original_card)) {
        return false;
    }
    return true;
}

void UserCutCallbackI::sequence() {
    cout.setstate(ios_base::failbit);
    bool found_in_cache = false;
    shared_ptr<SequenceInfo> info;
    if (shared_data->sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    cout.clear();

    log(found_in_cache, info);

    if (!info->sequenciable) {
        shared_data->printer_plots->update(rounded_z, rounded_x,
                                           shared_data->c->getSize(),
                                           shared_data->x->getSize());

        shared_data->glcs->emplace_back(info->learned_glc);

        auto [missing_bounds, cut] = get_cut(info->learned_glc);
        if (missing_bounds > 1) {
            shared_data->restart = true;
            shared_data->restarts++;
            abort();
        }

        add(cut >= 1.0);
    }
}

pair<bool, shared_ptr<SequenceInfo>> UserCutCallbackI::get_sat_sequence(
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

pair<bool, shared_ptr<SequenceInfo>> UserCutCallbackI::get_astar_sequence(
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

void UserCutCallbackI::log(bool found_in_cache, shared_ptr<SequenceInfo> info) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    cerr << "IN USER CUT CALLBACK" << endl;
    cerr << "IS AFTER CUT LOOP? " << (bool)isAfterCutLoop() << endl;
    cerr << "SEQ: " << shared_data->seq << endl;
    cerr << "START: " << shared_data->restarts << endl;
    cerr << "NODE ID: " << getNodeId() << endl;
    cerr << "INCUMBENT: " << getIncumbentObjValue() << endl;
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
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (info->sequenciable) {
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

pair<int, IloExpr> UserCutCallbackI::get_cut(shared_ptr<GLC> learned_glc) {
    auto env = (*shared_data->env);
    auto bl = (*shared_data->bounds_literals);
    auto n_ops = shared_data->n_ops;
    auto x = (*shared_data->x);

    int missing_bounds = 0;
    IloExpr cut(env);

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = bl[n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += 1.0 * x[bl[n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * x[n_ops];
        }
    }

    for (auto &[op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = bl[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += 1.0 * x[bl[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * x[op_id];
        }
    }

    return {missing_bounds, cut};
}

void UserCutCallbackI::main() {
    extract_sol();
    round_sol();

    // if (test_solution() && test_card()) {
    sequence();
    //}
}

IloCplex::Callback UserCutCallback(IloEnv env,
                                   shared_ptr<SharedData> shared_data) {
    return (IloCplex::Callback(new (env) UserCutCallbackI(env, shared_data)));
}

////////////////////////////////////////////////////////////////////////////////

void HeuristicCallbackI::extract_sol() {
    original_z = getObjValue();
    original_x.clear();
    for (int i = 0; i < shared_data->n_ops; ++i) {
        original_x.emplace_back(getValue((*shared_data->x)[i]));
    }
}

void HeuristicCallbackI::round_sol() {
    rounded_x.clear();
    rounded_z = round(original_z);
    transform(original_x.begin(), original_x.end(), back_inserter(rounded_x),
              [](double i) { return (long)ceil(i); });
}

bool HeuristicCallbackI::test_solution() {
    return (rounded_z >= 0) && all_of(rounded_x.begin(), rounded_x.end(),
                                      [](int c) { return c >= 0; });
}

bool HeuristicCallbackI::test_card() {
    double original_card =
        accumulate(original_x.begin(), original_x.end(), 0.0);
    int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

    long calc_rounded_z = 0;
    for (int op_id = 0; op_id < shared_data->n_ops; ++op_id) {
        calc_rounded_z +=
            (rounded_x[op_id] *
             shared_data->task_proxy->get_operators()[op_id].get_cost());
    }

    if (calc_rounded_z > (1.1 * original_z) ||
        rounded_card > (1.1 * original_card)) {
        return false;
    }
    return true;
}

void HeuristicCallbackI::sequence() {
    cout.setstate(ios_base::failbit);
    bool found_in_cache = false;
    shared_ptr<SequenceInfo> info;
    if (shared_data->sat_seq) {
        tie(found_in_cache, info) = get_sat_sequence(rounded_x);
    } else {
        tie(found_in_cache, info) = get_astar_sequence(rounded_z, rounded_x);
    }
    cout.clear();

    log(found_in_cache, info);
}

pair<bool, shared_ptr<SequenceInfo>> HeuristicCallbackI::get_sat_sequence(
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

pair<bool, shared_ptr<SequenceInfo>> HeuristicCallbackI::get_astar_sequence(
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

void HeuristicCallbackI::log(bool found_in_cache,
                             shared_ptr<SequenceInfo> info) {
    cerr << string(80, '*') << endl;
    cerr << boolalpha;
    cerr << "IN HEURISTIC CALLBACK" << endl;
    cerr << "SEQ: " << shared_data->seq << endl;
    cerr << "START: " << shared_data->restarts << endl;
    cerr << "NODE ID: " << getNodeId() << endl;
    cerr << "INCUMBENT: " << getIncumbentObjValue() << endl;
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
    cerr << "SEQUENCIABLE? " << info->sequenciable << endl;

    if (info->sequenciable) {
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
    }
    cerr << string(80, '*') << endl;
}

pair<int, IloExpr> HeuristicCallbackI::get_cut(shared_ptr<GLC> learned_glc) {
    auto env = (*shared_data->env);
    auto bl = (*shared_data->bounds_literals);
    auto n_ops = shared_data->n_ops;
    auto x = (*shared_data->x);

    int missing_bounds = 0;
    IloExpr cut(env);

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = bl[n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += 1.0 * x[bl[n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * x[n_ops];
        }
    }

    for (auto &[op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = bl[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += 1.0 * x[bl[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * x[op_id];
        }
    }

    return {missing_bounds, cut};
}

void HeuristicCallbackI::post_best_solution() {
    auto [found, info] = shared_data->cache_op_counts.get_min_plan();
    if (found && info->sequenciable) {
        OperatorCount plan_counts = plan_to_op_count(info, shared_data->n_ops);

        IloNumVarArray vars(getEnv());
        IloNumArray lb(getEnv());
        IloNumArray ub(getEnv());

        for (int i = 0; i < shared_data->n_ops; ++i) {
            vars.add((*shared_data->x)[i]);
            lb.add(plan_counts[i]);
            ub.add(plan_counts[i]);
        }

        setBounds(vars, lb, ub);
        solve();

        vars.clear();
        for (int i = 0; i < shared_data->x->getSize(); ++i) {
            vars.add((*shared_data->x)[i]);
        }
        IloNumArray vals(getEnv());
        getValues(vals, vars);
        for (int i = 0; i < vars.getSize(); ++i) {
            vals[i] = ceil(vals[i]);
        }

        if (getObjValue() < getIncumbentObjValue()) {
            cerr << "POSTING SOLUTION WITH COST: " << info->plan_cost << endl;
            for (int i = 0; i < vars.getSize(); ++i) {
                cerr << vals[i] << " ";
            }
            cerr << endl;

            setSolution(vars, vals);
        }
    }
}

void HeuristicCallbackI::main() {
    extract_sol();
    round_sol();

    // if (test_solution() && test_card()) {
    sequence();
    //}

    post_best_solution();
}

IloCplex::Callback HeuristicCallback(IloEnv env,
                                     shared_ptr<SharedData> shared_data) {
    return (IloCplex::Callback(new (env) HeuristicCallbackI(env, shared_data)));
}
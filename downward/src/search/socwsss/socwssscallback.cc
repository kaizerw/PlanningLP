#include "socwssscallback.h"

SOCWSSSCallback::SOCWSSSCallback(const Options &opts,
                                 shared_ptr<TaskProxy> task_proxy,
                                 shared_ptr<AbstractTask> task)
    : constraint_type(opts.get<int>("constraint_type")),
      constraint_generators(opts.get<string>("constraint_generators")),
      heuristic(opts.get<string>("heuristic")),
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

pair<int, OperatorCount> SOCWSSSCallback::round_sol(
    const Context &ctxt, double original_z, vector<double> &original_x) {
    int rounded_z = 0;
    OperatorCount rounded_x;

    if (ctxt.inRelaxation()) {
        rounded_z = round(original_z);
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x),
                  [](double i) { return (int)ceil(i); });
    } else if (ctxt.inCandidate()) {
        rounded_z = (int)original_z;
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x), [](double i) { return (int)i; });
    }

    return {rounded_z, rounded_x};
}

bool SOCWSSSCallback::test_relaxation(const Context &ctxt, int rounded_z,
                                      OperatorCount &rounded_x) {
    bool status = true;
    if (ctxt.inRelaxation()) {
        status = (rounded_z >= 0) && all_of(rounded_x.begin(), rounded_x.end(),
                                            [](int c) { return c >= 0; });
    }
    return status;
}

bool SOCWSSSCallback::test_card(const Context &ctxt, double original_z,
                                vector<double> &original_x, int rounded_z,
                                OperatorCount &rounded_x) {
    // We call our SAT sequencing procedure inside the python callback
    // interface of Gurobi 5.6 if both the cardinality and objective of the
    // rounded up operator count is within 20% of the linear count
    if (ctxt.inRelaxation()) {
        double original_card =
            accumulate(original_x.begin(), original_x.end(), 0);
        int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

        if (rounded_z > (1.2 * original_z) ||
            rounded_card > (1.2 * original_card)) {
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

SequenceInfo SOCWSSSCallback::get_astar_sequence(int f_bound,
                                                 OperatorCount op_count) {
    if (cache_op_counts.has(op_count)) {
        repeated_seqs++;
        return cache_op_counts[op_count];
    }

    // Setup A* search
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

    // Custom options
    opts.set("initial_op_count", op_count);
    opts.set("f_bound", f_bound);
    opts.set("constraint_type", constraint_type);

    // Perform A* search
    // cout.setstate(ios_base::failbit);
    seq++;
    printer_plots->show_data(seq, cplex->getBestObjValue(), repeated_seqs,
                             restarts);
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
    // cout.clear();

    SequenceInfo info;
    if (astar->found_solution()) {
        // Get plan found by A*
        info.plan = astar->get_plan();

        // Calculate plan cost
        info.plan_cost = accumulate(
            info.plan.begin(), info.plan.end(), 0,
            [&](int acc, OperatorID op_id) {
                return acc + task_proxy->get_operators()[op_id].get_cost();
            });

        cout << "SEQ " << seq << ": FOUND PLAN WITH COST=" << info.plan_cost
             << endl;
        info.sequenciable = true;
    } else {
        info.learned_glc = astar->learned_glc;
        cout << "SEQ " << seq << ": NOT SEQUENCIABLE WITH F-BOUND=" << f_bound
             << endl;
        info.sequenciable = false;
    }

    cache_op_counts.add(op_count, info);
    return info;
}

void SOCWSSSCallback::sequence(const Context &ctxt, int rounded_z,
                               OperatorCount &rounded_x) {
    // Try to sequence current solution
    SequenceInfo info = get_astar_sequence(rounded_z, rounded_x);

    if (info.sequenciable) {
        // If this plan has the same cost as the lower-bound found by the
        // LP, to the nearest integer, then we have optimally solved the
        // planning problem. If the plan cost is more than the lower bound,
        // this solution can be used to bound the search process
        if (ctxt.inRelaxation()) {
            vector<int> plan_counts(n_ops, 0);
            for (OperatorID &op_id : info.plan) {
                plan_counts[op_id.get_index()]++;
            }

            IloNumArray values(ctxt.getEnv());
            for (int i = 0; i < x->getSize(); ++i) {
                if (i < n_ops) {
                    values.add(plan_counts[i]);
                } else {
                    values.add(NAN);
                }
            }

            ctxt.postHeuristicSolution((*x), values, info.plan_cost,
                                       Context::SolutionStrategy::Propagate);
        }
    } else {
        if (!info.in_lp && constraint_type != 0) {
            glcs->emplace_back(info.learned_glc);

            // Unless there is more than one missing bounds literal, the
            // constraint still invalidates the current linear optimum. If a
            // weakened constraint is generated that does not invalidate the
            // current linear optimum, the MIP search is restarted after any
            // weakened terms are replaced with the correct bounds literals
            auto [missing_bounds, cut] = get_cut(info.learned_glc);
            if (missing_bounds > 1) {
                restart = true;
                restarts++;
                cache_op_counts.reset_in_lp();
                ctxt.abort();
            }

            if (ctxt.inRelaxation()) {
                ctxt.addUserCut(cut >= 1.0, IloCplex::UseCutForce, IloFalse);
            } else if (ctxt.inCandidate()) {
                ctxt.rejectCandidate(cut >= 1.0);
            }
            info.in_lp = true;

            printer_plots->update(rounded_z, rounded_x, c->getSize(),
                                  x->getSize());
        } else {
            if (ctxt.inCandidate()) {
                ctxt.rejectCandidate();
            }
        }
    }
}

void SOCWSSSCallback::invoke(const Context &ctxt) {
    if (ctxt.inCandidate() && ctxt.isCandidateRay()) {
        ctxt.rejectCandidate();
        return;
    }

    if (ctxt.inRelaxation() || ctxt.inCandidate()) {
        auto [original_z, original_x] = extract_sol(ctxt);
        auto [rounded_z, rounded_x] = round_sol(ctxt, original_z, original_x);

        if (test_relaxation(ctxt, rounded_z, rounded_x) &&
            test_card(ctxt, original_z, original_x, rounded_z, rounded_x)) {
            sequence(ctxt, rounded_z, rounded_x);
        }
    }
}

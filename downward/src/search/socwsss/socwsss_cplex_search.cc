#include "socwsss_cplex_search.h"

namespace SOCWSSS_cplex_search {
SOCWSSSCplexSearch::SOCWSSSCplexSearch(const Options &opts)
    : SearchEngine(opts),
      opts(opts),
      constraint_type(opts.get<int>("constraint_type")),
      constraint_generators(opts.get<string>("constraint_generators")),
      heuristic(opts.get<string>("heuristic")),
      mip_start(opts.get<bool>("mip_start")),
      sat_seq(opts.get<bool>("sat_seq")),
      recost(opts.get<bool>("recost")),
      hstar(opts.get<bool>("hstar")) {}

void SOCWSSSCplexSearch::initialize() {
    cout << "Initializing SOCWSSS CPLEX search..." << endl;

    n_ops = task_proxy.get_operators().size();
    n_vars = task_proxy.get_variables().size();

    // Initialize shared
    shared =
        make_shared<Shared>(opts, make_shared<TaskProxy>(task_proxy), task);

    // Calculate epsilon for recost
    if (recost && sat_seq) {
        vector<int> diffs;
        for (int op_id1 = 0; op_id1 < n_ops; ++op_id1) {
            for (int op_id2 = 0; op_id2 < n_ops; ++op_id2) {
                int c1 = task_proxy.get_operators()[op_id1].get_cost();
                int c2 = task_proxy.get_operators()[op_id2].get_cost();
                if (op_id1 != op_id2 && c1 > c2 && c1 > 0 && c2 > 0) {
                    diffs.emplace_back(c1 - c2);
                }
            }
        }
        int delta;
        if (diffs.size() > 0) {
            delta = (double)*min_element(diffs.begin(), diffs.end());
            double l = k_prealloc_bounds_yt;
            epsilon = delta / l;
        }
    }

    lp_variables = make_shared<vector<lp::LPVariable>>();
    lp_constraints = make_shared<vector<lp::LPConstraint>>();

    // Create initial variables for LP
    for (OperatorProxy op : task_proxy.get_operators()) {
        lp_variables->emplace_back(0, infinity, shared->get_op_cost(op));
    }

    // Create variable Y_T
    lp_variables->emplace_back(0, infinity, 0);

    // Create constraint:
    // 0 <= sum(Co*Yo, o in O) - Y_T <= 0
    lp::LPConstraint constraint_yt(0.0, 0.0);
    for (OperatorProxy op : task_proxy.get_operators()) {
        if (sat_seq) {
            constraint_yt.insert(op.get_id(), 1);
        } else {
            constraint_yt.insert(op.get_id(), shared->get_op_cost(op));
        }
    }
    constraint_yt.insert(n_ops, -1.0);
    lp_constraints->emplace_back(constraint_yt);

    // Initialize c23_ops
    c23_ops =
        make_shared<vector<pair<int, int>>>(vector(n_ops + 1, pair(-1, -1)));

    // Initialize bounds_literals
    bounds_literals =
        make_shared<vector<vector<int>>>(n_ops + 1, vector<int>());
    for (int op_id = 0; op_id < n_ops; ++op_id) {
        (*bounds_literals)[op_id].emplace_back(lp_variables->size());
        lp_variables->emplace_back(0, 1, 0);
        get_domain_constraints(op_id, k_prealloc_bounds_ops, 0);
    }
    (*bounds_literals)[n_ops].emplace_back(lp_variables->size());
    lp_variables->emplace_back(0, 1, 0);
    get_domain_constraints(n_ops, k_prealloc_bounds_yt, 0);

    // Add constraints from constraint generators
    create_base_constraints();

    // Perform MIP start
    if (mip_start) {
        Options opts_lmcut;
        opts_lmcut.set("transform", task);
        opts_lmcut.set("cache_estimates", true);
        auto lmcut = make_shared<LandmarkCutHeuristic>(opts_lmcut);

        options::Options opts_greedy(opts);
        opts_greedy.set("evals", vector<shared_ptr<Evaluator>>({lmcut}));
        opts_greedy.set("preferred", vector<shared_ptr<Evaluator>>());
        opts_greedy.set("boost", 0);
        opts_greedy.set("open", search_common::create_greedy_open_list_factory(
                                    opts_greedy));
        opts_greedy.set("reopen_closed", false);
        shared_ptr<Evaluator> evaluator = nullptr;
        opts_greedy.set("f_eval", evaluator);

        cout.setstate(ios_base::failbit);
        auto greedy = make_shared<EagerSearch>(opts_greedy);
        greedy->search();
        cout.clear();

        if (greedy->found_solution()) {
            auto mip_start_info = make_shared<SequenceInfo>();
            mip_start_info->sequenciable = true;
            mip_start_info->plan = greedy->get_plan();
            mip_start_info->plan_cost = shared->plan2cost(mip_start_info->plan);

            OperatorCount plan_counts = shared->plan2opcount(mip_start_info);
            shared->cache_op_counts.add(plan_counts, mip_start_info);
        }
    }
}

void SOCWSSSCplexSearch::create_base_constraints() {
    // Create state-equation constraints
    if (constraint_generators.find("seq") != string::npos) {
        cout << "Using SEQ constraints" << endl;
        SEQConstraints()(task, (*lp_constraints), infinity,
                         task_proxy.get_initial_state());
    }

    // Add lmcut landmark constraints with bounds literals
    if (constraint_generators.find("landmarks") != string::npos) {
        cout << "Using lmcut constraints" << endl;
        LandmarkCutLandmarks(task_proxy)
            .compute_landmarks(
                task_proxy.get_initial_state(), nullptr,
                [&](const vector<int> &op_ids, int) {
                    lp::LPConstraint landmark_constraint(1.0, infinity);
                    for (int op_id : op_ids) {
                        landmark_constraint.insert(op_id, 1.0);
                    }
                    lp_constraints->emplace_back(landmark_constraint);
                });
    }

    // Add relaxed exploration action landmarks
    /*
    if (true) {
        cout << "Using relaxed exploration landmarks" << endl;
        auto landmarks = RelaxedExplorationLandmarks(task_proxy)();
        for (int op_id : landmarks) {
            lp::LPConstraint landmark_constraint(1.0, infinity);
            landmark_constraint.insert(op_id, 1.0);
            lp_constraints->emplace_back(landmark_constraint);
        }
    }
    */

    // Compute dynamic merging
    if (constraint_generators.find("dynamicmerging") != string::npos) {
        cout << "Using dynamic merging constraints" << endl;
        DynamicMerging dm(lp::LPSolverType(opts.get_enum("lpsolver")),
                          make_shared<TaskProxy>(task_proxy), infinity,
                          lp_variables->size(), lp_constraints->size());

        // Copy dynamic merging constraints and variables
        copy(dm.lp_variables.begin(), dm.lp_variables.end(),
             back_inserter((*lp_variables)));
        copy(dm.lp_constraints.begin(), dm.lp_constraints.end(),
             back_inserter((*lp_constraints)));
    }

    // Florian delete relaxation constraints
    if (constraint_generators.find("h+") != string::npos) {
        cout << "Using delete relaxation constraints" << endl;
        FlorianDeleteRelaxationConstraints(
            make_shared<TaskProxy>(task_proxy), infinity, (*lp_variables),
            (*lp_constraints), task_proxy.get_initial_state());
    }

    // Florian flow constraints
    if (constraint_generators.find("flow") != string::npos) {
        cout << "Using flow constraints" << endl;
        FlorianFlowConstraints fc(task, lp_variables->size(), infinity,
                                  task_proxy.get_initial_state());

        // Copy flow constraints and variables
        copy(fc.lp_variables.begin(), fc.lp_variables.end(),
             back_inserter((*lp_variables)));
        copy(fc.lp_constraints.begin(), fc.lp_constraints.end(),
             back_inserter((*lp_constraints)));
    }
}

void SOCWSSSCplexSearch::create_cplex_data() {
    env = make_shared<IloEnv>();
    model = make_shared<IloModel>((*env));
    x = make_shared<IloNumVarArray>((*env));
    c = make_shared<IloRangeArray>((*env));
    obj = make_shared<IloObjective>(IloMinimize((*env)));

    // Create new bounds literals if needed
    for (auto &glc : (*shared->glcs)) {
        int yt_bound = glc->yt_bound;
        int last_yt_bound = (*bounds_literals)[n_ops].size() - 1;

        if (yt_bound > 0 && yt_bound > last_yt_bound) {
            get_domain_constraints(n_ops, yt_bound, last_yt_bound);
        }
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            int last_op_bound = (*bounds_literals)[op_id].size() - 1;

            if (op_bound > last_op_bound) {
                get_domain_constraints(op_id, op_bound, last_op_bound);
            }
        }
    }

    map<int, string> var_names;
    for (int i = 0; i < (int)bounds_literals->size(); ++i) {
        var_names[i] = string(
            i == n_ops ? "YT" : task_proxy.get_operators()[i].get_name());

        auto b = (*bounds_literals)[i];
        for (int j = 0; j < (int)b.size(); ++j) {
            string var_name;
            var_name += string("[");
            var_name += string(
                i == n_ops ? "YT" : task_proxy.get_operators()[i].get_name());
            var_name += string(" >= ");
            var_name += to_string(j);
            var_name += string("]");

            var_names[(*bounds_literals)[i][j]] = var_name;
        }
    }

    // Create variables
    for (size_t vi = 0; vi < lp_variables->size(); ++vi) {
        const lp::LPVariable &variable = (*lp_variables)[vi];
        double lb = variable.lower_bound;
        double ub = variable.upper_bound;
        string name;
        if (var_names.count(vi) > 0) {
            name = var_names[vi];
        } else {
            name = string("var_") + to_string(vi);
        }
        x->add(IloNumVar((*env), lb, ub, ILOINT, name.c_str()));
        obj->setLinearCoef((*x)[vi], variable.objective_coefficient);
    }

    // Create constraints
    for (size_t ci = 0; ci < lp_constraints->size(); ++ci) {
        const lp::LPConstraint &constraint = (*lp_constraints)[ci];
        double lb = constraint.get_lower_bound();
        double ub = constraint.get_upper_bound();

        IloRange range((*env), lb, ub);

        for (size_t vi = 0; vi < constraint.get_variables().size(); ++vi) {
            int var_id = constraint.get_variables()[vi];
            double coeff = constraint.get_coefficients()[vi];
            range.setLinearCoef((*x)[var_id], coeff);
        }

        c->add(range);
    }

    // Adding learned constraints
    for (auto &it : shared->cache_glcs.cache) {
        auto &glc = it.first;
        int yt_bound = glc->yt_bound;

        IloRange range((*env), 1.0, IloInfinity);

        if (yt_bound > 0) {
            range.setLinearCoef((*x)[(*bounds_literals)[n_ops][yt_bound]], 1.0);
        }
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            range.setLinearCoef((*x)[(*bounds_literals)[op_id][op_bound]], 1.0);
        }

        c->add(range);
    }

    model->add((*obj));
    model->add((*c));

    cplex = make_shared<IloCplex>((*model));

    // cplex->setOut(env->getNullStream());
    // cplex->setWarning(env->getNullStream());
    cplex->setParam(IloCplex::MIPInterval, 1);

    cplex->setParam(IloCplex::MIPSearch, IloCplex::Traditional);
    cplex->setParam(IloCplex::NodeSel, IloCplex::BestBound);
    cplex->setParam(IloCplex::Param::Threads, 1);
    cplex->setParam(IloCplex::Param::Preprocessing::Presolve, IloFalse);
    cplex->setParam(IloCplex::Param::Preprocessing::Reduce, 0);
    cplex->setParam(IloCplex::HeurFreq, -1);
    cplex->setParam(IloCplex::RINSHeur, -1);

    /*
    cplex->setParam(IloCplex::Param::MIP::Cuts::BQP, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::Cliques, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::Covers, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::Disjunctive, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::FlowCovers, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::Gomory, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::GUBCovers, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::Implied, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::LiftProj, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::LocalImplied, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::MCFCut, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::MIRCut, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::PathCut, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::RLT, -1);
    cplex->setParam(IloCplex::Param::MIP::Cuts::ZeroHalfCut, -1);
    */

    // Add MIP start
    auto [found, info] = shared->cache_op_counts.get_best_plan();
    if (found && info->sequenciable) {
        OperatorCount plan_counts = shared->plan2opcount(info);

        IloNumVarArray vars((*env));
        IloNumArray vals((*env));
        for (int op_id = 0; op_id < n_ops; ++op_id) {
            vars.add((*x)[op_id]);
            vals.add(plan_counts[op_id]);
        }
        cplex->addMIPStart(vars, vals);
        vars.end();
        vals.end();
    }

    shared->bounds_literals = bounds_literals;
    shared->env = env;
    shared->model = model;
    shared->x = x;
    shared->c = c;
    shared->obj = obj;
    shared->cplex = cplex;
    shared->lp_variables = lp_variables;
    shared->lp_constraints = lp_constraints;
    shared->epsilon = epsilon;
}

void SOCWSSSCplexSearch::get_domain_constraints(int op_id, int current_bound,
                                                int previous_bound) {
    // Create binary variables
    for (int i = previous_bound + 1; i <= current_bound; ++i) {
        (*bounds_literals)[op_id].emplace_back(lp_variables->size());
        lp_variables->emplace_back(0, 1, 0);
    }

    // Create constraints (1): [Yo >= k] - [Yo >= k - 1] <= 0
    for (int i = current_bound; i > previous_bound; --i) {
        lp::LPConstraint c1(-infinity, 0.0);

        int id_k = (*bounds_literals)[op_id][i];
        int id_k_minus_1 = (*bounds_literals)[op_id][i - 1];

        c1.insert(id_k, 1.0);
        c1.insert(id_k_minus_1, -1.0);

        lp_constraints->emplace_back(c1);
    }

    // Create constraint (2): sum([Yo >= i], i=1...k) - Yo <= 0
    lp::LPConstraint c2(-infinity, 0.0);
    for (int i = 1; i <= current_bound; ++i) {
        int id_k = (*bounds_literals)[op_id][i];
        c2.insert(id_k, 1.0);
    }
    c2.insert(op_id, -1.0);

    // Create constraint (3): Yo - M*[Yo >= k] <= k - 1
    double M = 1e10;
    lp::LPConstraint c3(-infinity, current_bound - 1);
    c3.insert(op_id, 1.0);
    c3.insert((*bounds_literals)[op_id][current_bound], -M);

    // Update constraints 2 and 3 of this operator
    auto [ix2, ix3] = (*c23_ops)[op_id];
    if (ix2 == -1 && ix3 == -1) {
        // If constraints 2 and 3 don't exist for this operator then create them
        lp_constraints->emplace_back(c2);
        lp_constraints->emplace_back(c3);

        (*c23_ops)[op_id] = {lp_constraints->size() - 2,
                             lp_constraints->size() - 1};
    } else {
        // If constraints 2 and 3 already exist for this operator then update
        // them
        (*lp_constraints)[ix2] = c2;
        (*lp_constraints)[ix3] = c3;
    }
}

SearchStatus SOCWSSSCplexSearch::step() {
    SearchStatus status = FAILED;

    // Execute a custom branch-and-cut
    while (true) {
        create_cplex_data();

        try {
            cout << "Starting SOCWSSS CPLEX search..." << endl;

            lazy_callback =
                make_shared<IloCplex::Callback>(LazyCallback((*env), shared));
            cplex->use((*lazy_callback));

            usercut_callback = make_shared<IloCplex::Callback>(
                UserCutCallback((*env), shared));
            cplex->use((*usercut_callback));

            heuristic_callback = make_shared<IloCplex::Callback>(
                HeuristicCallback((*env), shared));
            cplex->use((*heuristic_callback));

            cplex->solve();
        } catch (IloException &ex) {
            string msg(ex.getMessage());
            cout << "CPLEX exception: " << msg << endl;
            if (msg.find("Out of memory") != string::npos) {
                exit(22);
            }
            exit(25);
        } catch (...) {
            exit(25);
        }

        if (shared->restart) {
            cout << "RESTARTING..." << endl;
            shared->restarts++;
            shared->restart = false;
        } else {
            break;
        }
    }

    // Print out custom attributes
    shared->printer_plots->show_data(
        shared->seq, cplex->getBestObjValue(), shared->repeated_seqs,
        shared->restarts,
        shared->cache_op_counts.get_best_plan().second->plan_cost);

    /*
    cout << "\tALL LEARNED GLCS:" << endl;
    int glc_id = 0;
    //for (auto glc : (*socwsss_callback->glcs)) {
    for (auto glc : (*shared->glcs)) {
        cout << "\t\t(" << glc_id << ") ";
        cout << "[YT >= " << glc->yt_bound << "] ";
        for (auto i : glc->ops_bounds) {
            cout << "[" << task_proxy.get_operators()[i.first].get_name()
                 << " >= " << i.second << "] ";
        }
        cout << endl;
        glc_id++;
    }

    cout << "\tREPEATED LEARNED GLCS:" << endl;
    int glc1_id = 0;
    //for (auto glc1 : (*socwsss_callback->glcs)) {
    for (auto glc1 : (*shared->glcs)) {
        int glc2_id = 0;
        //for (auto glc2 : (*socwsss_callback->glcs)) {
        for (auto glc2 : (*shared->glcs)) {
            if (glc1_id != glc2_id && (*glc1) == (*glc2)) {
                cout << glc1_id << " EQUALS " << glc2_id << endl;
            }
            glc2_id++;
        }
        glc1_id++;
    }

    cout << "\tALL PLANS IN CACHE:" << endl;
    //for (auto i : socwsss_callback->cache_op_counts.cache) {
    for (auto i : shared->cache_op_counts.cache) {
        if (i.second->sequenciable) {
            cout << "\t\t" << i.second->plan_cost << " = ";
            for (auto j : i.second->plan) {
                cout << task_proxy.get_operators()[j].get_name() << " ";
            }
            cout << endl;

            OperatorCount op_counts(n_ops, 0);
            for (auto op_id : i.second->plan) {
                op_counts[op_id.get_index()]++;
            }
            int glc_id = 0;
            //for (auto glc : (*socwsss_callback->glcs)) {
            for (auto glc : (*shared->glcs)) {
                int sat = 0;
                int yt_bound = glc->yt_bound;
                if (yt_bound != -1 && i.second->plan_cost >= yt_bound) {
                    sat++;
                }
                for (auto &[op_id, op_bound] : glc->ops_bounds) {
                    if (op_counts[op_id] >= op_bound) {
                        sat++;
                    }
                }
                if (sat == 0) {
                    cout << "\t\t\tVIOLATES GLC " << glc_id << endl;
                }
                glc_id++;
            }
        }
    }

    int ops_zero = 0;
    for (auto op : task_proxy.get_operators()) {
        if (op.get_cost() == 0) {
            ops_zero++;
        }
    }
    cout << "\tOPS WITH ZERO COST: " << ops_zero << endl;
    */

    if (cplex->getStatus() == IloAlgorithm::Status::Infeasible ||
        cplex->getStatus() == IloAlgorithm::Status::InfeasibleOrUnbounded) {
        cout << "INFEASIBLE" << endl;
        exit(13);
    }

    // Get final plan
    if (cplex->getStatus() == IloAlgorithm::Status::Optimal) {
        status = SOLVED;
        OperatorCount op_counts;
        for (int i = 0; i < n_ops; ++i) {
            op_counts.emplace_back(
                lround(ceil(cplex->getValue((*x)[i]) - 0.01)));
        }

        Plan plan = shared->cache_op_counts[op_counts]->plan;
        if (plan.size() == 0) {
            cout << "SOLUTION NOT FOUND" << endl;
            exit(12);
        }
        set_plan(plan);
    }

    return status;
}

void SOCWSSSCplexSearch::print_statistics() const {
    // statistics.print_detailed_statistics();
    // search_space.print_statistics();
    // pruning_method->print_statistics();
}

static shared_ptr<SearchEngine> _parse(OptionParser &parser) {
    parser.document_synopsis("SOCWSSS CPLEX Search", "SOCWSSS CPLEX Search");

    parser.add_option<int>("constraint_type", "", "1");
    parser.add_option<string>("constraint_generators", "", "seq_landmarks");
    parser.add_option<string>("heuristic", "", "blind");
    parser.add_option<bool>("mip_start", "", "false");
    parser.add_option<bool>("sat_seq", "", "false");
    parser.add_option<bool>("recost", "", "false");
    parser.add_option<bool>("hstar", "", "false");

    lp::add_lp_solver_option_to_parser(parser);
    SearchEngine::add_pruning_option(parser);
    SearchEngine::add_options_to_parser(parser);

    Options opts = parser.parse();

    shared_ptr<SOCWSSS_cplex_search::SOCWSSSCplexSearch> engine;
    if (!parser.dry_run()) {
        engine = make_shared<SOCWSSS_cplex_search::SOCWSSSCplexSearch>(opts);
    }

    return engine;
}

static Plugin<SearchEngine> _plugin("socwsss_cplex", _parse);
}  // namespace SOCWSSS_cplex_search

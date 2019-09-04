#include "socwsss_cplex_search.h"

namespace SOCWSSS_cplex_search {
SOCWSSSCplexSearch::SOCWSSSCplexSearch(const Options &opts)
    : SearchEngine(opts),
      constraint_type(opts.get<int>("constraint_type")),
      constraint_generators(opts.get<string>("constraint_generators")),
      heuristic(opts.get<string>("heuristic")),
      sat_seq(opts.get<bool>("sat_seq")),
      mip_start(opts.get<bool>("mip_start")),
      lp_solver_type(lp::LPSolverType(opts.get_enum("lpsolver"))),
      cost_type(opts.get<int>("cost_type")),
      max_time(opts.get<double>("max_time")),
      bound(opts.get<int>("bound")),
      pruning(opts.get<shared_ptr<PruningMethod>>("pruning")),
      verbosity(opts.get<int>("verbosity")) {
    this->opts.set("constraint_type", opts.get<int>("constraint_type"));
    this->opts.set("constraint_generators",
                   opts.get<string>("constraint_generators"));
    this->opts.set("heuristic", opts.get<string>("heuristic"));
    this->opts.set("sat_seq", opts.get<bool>("sat_seq"));
    this->opts.set("mip_start", opts.get<bool>("mip_start"));
    this->opts.set("lp_solver_type",
                   lp::LPSolverType(opts.get_enum("lpsolver")));
    this->opts.set("cost_type", opts.get<int>("cost_type"));
    this->opts.set("max_time", opts.get<double>("max_time"));
    this->opts.set("bound", opts.get<int>("bound"));
    this->opts.set("pruning", opts.get<shared_ptr<PruningMethod>>("pruning"));
    this->opts.set("verbosity", opts.get<int>("verbosity"));
}

void SOCWSSSCplexSearch::initialize() {
    cout << "Initializing SOCWSSS CPLEX search..." << endl;

    n_ops = task_proxy.get_operators().size();
    n_vars = task_proxy.get_variables().size();

    lp_variables = make_shared<vector<lp::LPVariable>>();
    lp_constraints = make_shared<vector<lp::LPConstraint>>();

    // Create initial variables for LP
    for (OperatorProxy op : task_proxy.get_operators()) {
        lp_variables->emplace_back(0, infinity, op.get_cost());
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
            constraint_yt.insert(op.get_id(), op.get_cost());
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
    for (int op_id = 0; op_id < n_ops + 1; ++op_id) {
        (*bounds_literals)[op_id].emplace_back(lp_variables->size());
        lp_variables->emplace_back(0, 1, 0);
        get_domain_constraints(op_id, k_prealloc_bounds, 0);
    }

    // Add constraints from constraint generators
    create_base_constraints();

    shared_data =
        make_shared<SharedData>(opts, make_shared<TaskProxy>(task_proxy), task);

    // Perform MIP start
    if (mip_start) {
        Options opts_lmcut;
        opts_lmcut.set("transform", task);
        opts_lmcut.set("cache_estimates", true);
        auto lmcut = make_shared<LandmarkCutHeuristic>(opts_lmcut);

        options::Options opts_greedy;
        opts_greedy.set("evals", vector<shared_ptr<Evaluator>>({lmcut}));
        opts_greedy.set("preferred", vector<shared_ptr<Evaluator>>());
        opts_greedy.set("boost", 0);
        opts_greedy.set("pruning", pruning);
        opts_greedy.set("cost_type", cost_type);
        opts_greedy.set("bound", bound);
        opts_greedy.set("max_time", max_time);
        opts_greedy.set("verbosity", verbosity);

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
            has_mip_start = true;
            auto plan = greedy->get_plan();
            int plan_cost = accumulate(
                plan.begin(), plan.end(), 0, [&](int acc, OperatorID op_id) {
                    return acc + task_proxy.get_operators()[op_id].get_cost();
                });

            mip_start_op_count =
                OperatorCount(task_proxy.get_operators().size(), 0);
            for (OperatorID &op_id : plan) {
                mip_start_op_count[op_id.get_index()]++;
            }

            auto mip_start_info = make_shared<SequenceInfo>();
            mip_start_info->sequenciable = true;
            mip_start_info->plan = plan;
            mip_start_info->plan_cost = plan_cost;
            shared_data->cache_op_counts.add(mip_start_op_count,
                                             mip_start_info);
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
                        landmark_constraint.insert((*bounds_literals)[op_id][1],
                                                   1.0);
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
        DynamicMerging dm(lp_solver_type, make_shared<TaskProxy>(task_proxy),
                          infinity, lp_variables->size(),
                          lp_constraints->size());

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
    for (auto &glc : (*shared_data->glcs)) {
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

    // Create variables
    for (size_t vi = 0; vi < lp_variables->size(); ++vi) {
        const lp::LPVariable &variable = (*lp_variables)[vi];
        double lb = variable.lower_bound;
        double ub = variable.upper_bound;
        x->add(IloNumVar((*env), lb, ub, ILOINT));
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
    for (auto &glc : (*shared_data->glcs)) {
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
    cplex->setParam(IloCplex::Param::Threads, 1);
    cplex->setParam(IloCplex::Param::Preprocessing::Presolve, IloFalse);
    cplex->setParam(IloCplex::Param::Preprocessing::Reduce, 0);
    cplex->setParam(IloCplex::HeurFreq, -1);

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
    if (has_mip_start) {
        IloNumVarArray startVar((*env));
        IloNumArray startVal((*env));
        for (int op_id = 0; op_id < n_ops; ++op_id) {
            startVar.add((*x)[op_id]);
            startVal.add(mip_start_op_count[op_id]);
        }
        cplex->addMIPStart(startVar, startVal);
        startVal.end();
        startVar.end();
    }

    shared_data->bounds_literals = bounds_literals;
    shared_data->env = env;
    shared_data->model = model;
    shared_data->x = x;
    shared_data->c = c;
    shared_data->obj = obj;
    shared_data->cplex = cplex;
    shared_data->lp_variables = lp_variables;
    shared_data->lp_constraints = lp_constraints;
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

            lazy_callback = make_shared<IloCplex::Callback>(
                LazyCallback((*env), shared_data));
            cplex->use((*lazy_callback));

            usercut_callback = make_shared<IloCplex::Callback>(
                UserCutCallback((*env), shared_data));
            cplex->use((*usercut_callback));

            heuristic_callback = make_shared<IloCplex::Callback>(
                HeuristicCallback((*env), shared_data));
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

        if (shared_data->restart) {
            cout << "RESTARTING..." << endl;
            shared_data->restart = false;
        } else {
            break;
        }
    }

    // Print out custom attributes
    shared_data->printer_plots->show_data(
        shared_data->seq, cplex->getBestObjValue(), shared_data->repeated_seqs,
        shared_data->restarts,
        shared_data->cache_op_counts.get_best_plan().second->plan_cost);

    /*
    cout << "\tALL LEARNED GLCS:" << endl;
    int glc_id = 0;
    //for (auto glc : (*socwsss_callback->glcs)) {
    for (auto glc : (*shared_data->glcs)) {
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
    for (auto glc1 : (*shared_data->glcs)) {
        int glc2_id = 0;
        //for (auto glc2 : (*socwsss_callback->glcs)) {
        for (auto glc2 : (*shared_data->glcs)) {
            if (glc1_id != glc2_id && (*glc1) == (*glc2)) {
                cout << glc1_id << " EQUALS " << glc2_id << endl;
            }
            glc2_id++;
        }
        glc1_id++;
    }

    cout << "\tALL PLANS IN CACHE:" << endl;
    //for (auto i : socwsss_callback->cache_op_counts.cache) {
    for (auto i : shared_data->cache_op_counts.cache) {
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
            for (auto glc : (*shared_data->glcs)) {
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
        for (IloInt i = 0; i < n_ops; ++i) {
            op_counts.emplace_back(cplex->getValue((*x)[i]));
        }
        Plan plan = shared_data->cache_op_counts[op_counts]->plan;
        if (plan.size() == 0) {
            cout << "SOLUTION NOT FOUND" << endl;
            exit(12);
        }
        set_plan(plan);
    }

    if (shared_data->early_abort) {
        status = SOLVED;
        Plan plan = shared_data->cache_op_counts.get_best_plan().second->plan;
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

    parser.add_option<int>("constraint_type", "", "0");
    parser.add_option<string>("constraint_generators", "", "seq");
    parser.add_option<string>("heuristic", "", "blind");
    parser.add_option<bool>("mip_start", "", "true");
    parser.add_option<bool>("sat_seq", "", "false");

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

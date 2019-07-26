#include "socwsss_cplex_search.h"

namespace SOCWSSS_cplex_search {

SOCWSSSCplexSearch::SOCWSSSCplexSearch(const Options &opts)
    : SearchEngine(opts),
      constraint_type(opts.get<int>("constraint_type")),
      constraint_generators(opts.get<string>("constraint_generators")),
      heuristic(opts.get<string>("heuristic")),
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
    // 0 <= sum(Yo, o in O) - Y_T <= 0
    lp::LPConstraint constraint_yt(0.0, 0.0);
    for (OperatorProxy op : task_proxy.get_operators()) {
        constraint_yt.insert(op.get_id(), 1.0);
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

    create_base_constraints();

    socwsss_callback = make_shared<SOCWSSSCallback>(
        opts, make_shared<TaskProxy>(task_proxy), task);

    socwsss_callback_mask |= IloCplex::Callback::Context::Id::Relaxation;
    socwsss_callback_mask |= IloCplex::Callback::Context::Id::Candidate;
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
    for (auto &glc : (*socwsss_callback->glcs)) {
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
    for (auto &glc : (*socwsss_callback->glcs)) {
        int yt_bound = glc->yt_bound;

        IloExpr expr((*env));
        if (yt_bound > 0) {
            expr += (*x)[(*bounds_literals)[n_ops][yt_bound]];
        }
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            expr += (*x)[(*bounds_literals)[op_id][op_bound]];
        }

        c->add(expr >= 1.0);
    }

    model->add((*obj));
    model->add((*c));

    cplex = make_shared<IloCplex>((*model));
    cplex->setOut(env->getNullStream());
    cplex->setWarning(env->getNullStream());
    cplex->setParam(IloCplex::Param::Threads, 1);

    // cplex->setParam(IloCplex::Param::MIP::Strategy::Search,
    //                IloCplex::Traditional);
    // cplex->setParam(IloCplex::Param::Preprocessing::Presolve, IloFalse);
    // cplex->setParam(IloCplex::Param::Preprocessing::Reduce, 0);
    // cplex->setParam(IloCplex::Param::RootAlgorithm, IloCplex::Primal);

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

    socwsss_callback->bounds_literals = bounds_literals;
    socwsss_callback->env = env;
    socwsss_callback->model = model;
    socwsss_callback->x = x;
    socwsss_callback->c = c;
    socwsss_callback->obj = obj;
    socwsss_callback->cplex = cplex;
    socwsss_callback->lp_variables = lp_variables;
    socwsss_callback->lp_constraints = lp_constraints;
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
        cplex->use(socwsss_callback.get(), socwsss_callback_mask);

        try {
            cout << "Starting SOCWSSS CPLEX search..." << endl;
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

        if (socwsss_callback->restart) {
            cout << "RESTARTING..." << endl;
            socwsss_callback->restart = false;
        } else {
            break;
        }
    }

    // Print out custom attributes
    socwsss_callback->printer_plots->show_data(
        socwsss_callback->seq, cplex->getBestObjValue(),
        socwsss_callback->repeated_seqs, socwsss_callback->restarts);

    /*
    cout << "\tALL LEARNED GLCS:" << endl;
    for (auto glc : (*socwsss_callback->glcs)) {
        cout << "\t\t";
        cout << "YT >= " << glc->yt_bound << " ";
        for (auto i : glc->ops_bounds) {
            cout << task_proxy.get_operators()[i.first].get_name()
                 << " >= " << i.second << " ";
        }
        cout << endl;
    }

    cout << "\tALL PLANS IN CACHE:" << endl;
    for (auto i : socwsss_callback->cache_op_counts.cache) {
        if (i.second.sequenciable) {
            cout << "\t\t" << i.second.plan_cost << " = ";
            for (auto j : i.second.plan) {
                cout << task_proxy.get_operators()[j].get_name() << " ";
            }
            cout << endl;
        }
    }

    int ops_zero = 0;
    for (auto op : task_proxy.get_operators()) {
        if (op.get_cost() == 0) {
            ops_zero++;
        }
    }
    cout << "\tOPS WITH ZERO COST: " << ops_zero << endl;

    if (cplex->getStatus() == IloAlgorithm::Status::Infeasible ||
        cplex->getStatus() == IloAlgorithm::Status::InfeasibleOrUnbounded) {
        cout << "INFEASIBLE" << endl;
        exit(13);
    }
    */

    // Get final plan
    if (cplex->getStatus() == IloAlgorithm::Status::Optimal) {
        status = SOLVED;
        OperatorCount op_counts;
        for (IloInt i = 0; i < n_ops; ++i) {
            op_counts.emplace_back(cplex->getValue((*x)[i]));
        }
        Plan plan = socwsss_callback->cache_op_counts[op_counts].plan;
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
    parser.add_option<string>("constraint_generators", "", "seq");
    parser.add_option<string>("heuristic", "", "blind");

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

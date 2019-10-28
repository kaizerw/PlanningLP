#include "socwsss.h"

SOCWSSS::SOCWSSS(const Options &opts)
    : SearchEngine(opts),
      opts(opts),
      ops(task_proxy.get_operators()),
      vars(task_proxy.get_variables()),
      k_prealloc_bounds_ops(2),
      k_prealloc_bounds_yt(2),
      k_prealloc_bounds_yf(2),
      M(1e10),
      epsilon(0.0) {}

void SOCWSSS::initialize() {
    cout << "Initializing SOCWSSS..." << endl;

    shr = make_shared<Shared>(opts, make_shared<TaskProxy>(task_proxy), task);
    calc_epsilon_recost();
    add_base_constraints();
    add_heuristic_constraints();
    add_mip_start();
}

void SOCWSSS::calc_epsilon_recost() {
    if (opts.get<bool>("recost") && opts.get<bool>("sat_seq")) {
        vector<int> diffs;
        for (size_t op_id1 = 0; op_id1 < ops.size(); ++op_id1) {
            for (size_t op_id2 = 0; op_id2 < ops.size(); ++op_id2) {
                int c1 = ops[op_id1].get_cost();
                int c2 = ops[op_id2].get_cost();
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
            shr->epsilon = epsilon;
        }
    }
}

void SOCWSSS::add_base_constraints() {
    lp_variables = make_shared<vector<lp::LPVariable>>();
    lp_constraints = make_shared<vector<lp::LPConstraint>>();

    for (OperatorProxy op : ops) {
        lp_variables->emplace_back(0, IloInfinity, shr->get_op_cost(op));
    }

    lp_variables->emplace_back(0, IloInfinity, 0);
    lp_variables->emplace_back(0, IloInfinity, 0);

    yt_index = ops.size();
    yf_index = ops.size() + 1;

    // Create constraint: 0 <= sum(Yo, o in O) - Y_T <= 0
    lp::LPConstraint c_yt(0.0, 0.0);
    for (OperatorProxy op : ops) {
        c_yt.insert(op.get_id(), 1);
    }
    c_yt.insert(yt_index, -1.0);
    lp_constraints->emplace_back(c_yt);

    // Create constraint: 0 <= sum(Co*Yo, o in O) - Y_F <= 0
    lp::LPConstraint c_yf(0.0, 0.0);
    for (OperatorProxy op : ops) {
        c_yf.insert(op.get_id(), shr->get_op_cost(op));
    }
    c_yf.insert(yf_index, -1.0);
    lp_constraints->emplace_back(c_yf);

    c2_ops = make_shared<vector<int>>(vector(ops.size() + 2, -1));

    bounds_literals =
        make_shared<vector<vector<int>>>(ops.size() + 2, vector<int>({-1}));
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        get_domain_constraints(op_id, k_prealloc_bounds_ops, 0);
    }
    get_domain_constraints(yt_index, k_prealloc_bounds_yt, 0);
    get_domain_constraints(yf_index, k_prealloc_bounds_yf, 0);

    // Add constraint YF >= C*
    if (opts.get<bool>("add_cstar_constraint")) {
        // shared_ptr<pdbs::PDBHeuristic> hstar =
        //    dynamic_pointer_cast<pdbs::PDBHeuristic>(shr->full_pdb);
        // int cstar = hstar->compute_heuristic(task_proxy.get_initial_state());

        lp::LPConstraint c_cstar(opts.get<int>("cstar"), IloInfinity);
        c_cstar.insert(yf_index, 1.0);
        lp_constraints->emplace_back(c_cstar);
    }
}

void SOCWSSS::add_heuristic_constraints() {
    if (opts.get<string>("constraint_generators").find("seq") != string::npos) {
        cout << "Using SEQ constraints" << endl;
        SEQConstraints()(task, (*lp_constraints), IloInfinity,
                         task_proxy.get_initial_state());
    }

    if (opts.get<string>("constraint_generators").find("landmarks") !=
        string::npos) {
        cout << "Using lmcut constraints" << endl;
        LandmarkCutLandmarks(task_proxy)
            .compute_landmarks(
                task_proxy.get_initial_state(), nullptr,
                [&](const vector<int> &op_ids, int) {
                    lp::LPConstraint landmark_constraint(1.0, IloInfinity);
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
            lp::LPConstraint landmark_constraint(1.0, IloInfinity);
            landmark_constraint.insert(op_id, 1.0);
            lp_constraints->emplace_back(landmark_constraint);
        }
    }
    */

    if (opts.get<string>("constraint_generators").find("dynamicmerging") !=
        string::npos) {
        cout << "Using dynamic merging constraints" << endl;
        DynamicMerging dm(lp::LPSolverType(opts.get_enum("lpsolver")),
                          make_shared<TaskProxy>(task_proxy), IloInfinity,
                          lp_variables->size(), lp_constraints->size());

        copy(dm.lp_variables.begin(), dm.lp_variables.end(),
             back_inserter((*lp_variables)));
        copy(dm.lp_constraints.begin(), dm.lp_constraints.end(),
             back_inserter((*lp_constraints)));
    }

    if (opts.get<string>("constraint_generators").find("h+") != string::npos) {
        cout << "Using delete relaxation constraints" << endl;
        FlorianDeleteRelaxationConstraints(
            make_shared<TaskProxy>(task_proxy), IloInfinity, (*lp_variables),
            (*lp_constraints), task_proxy.get_initial_state());
    }

    if (opts.get<string>("constraint_generators").find("flow") !=
        string::npos) {
        cout << "Using flow constraints" << endl;
        FlorianFlowConstraints fc(task, lp_variables->size(), IloInfinity,
                                  task_proxy.get_initial_state());

        copy(fc.lp_variables.begin(), fc.lp_variables.end(),
             back_inserter((*lp_variables)));
        copy(fc.lp_constraints.begin(), fc.lp_constraints.end(),
             back_inserter((*lp_constraints)));
    }
}

void SOCWSSS::add_mip_start() {
    if (opts.get<bool>("mip_start")) {
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
            mip_start_info->plan_cost = shr->plan2cost(mip_start_info->plan);

            OperatorCount plan_counts = shr->plan2opcount(mip_start_info->plan);
            shr->cache_op_counts.add(plan_counts, mip_start_info);
        }
    }
}

void SOCWSSS::create_cplex_model() {
    env = make_shared<IloEnv>();
    model = make_shared<IloModel>((*env));
    x = make_shared<IloNumVarArray>((*env));
    c = make_shared<IloRangeArray>((*env));
    obj = make_shared<IloObjective>(IloMinimize((*env)));

    // Create new bounds literals if needed
    for (auto &[glc, state] : shr->cache_glcs.cache) {
        if (state != GLCState::NEW) {
            int yt_bound = glc->yt_bound;
            int last_yt_bound = (*bounds_literals)[yt_index].size() - 1;
            if (yt_bound > 0 && yt_bound > last_yt_bound) {
                get_domain_constraints(yt_index, yt_bound, last_yt_bound);
            }

            int yf_bound = glc->yf_bound;
            int last_yf_bound = (*bounds_literals)[yf_index].size() - 1;
            if (yf_bound > 0 && yf_bound > last_yf_bound) {
                get_domain_constraints(yf_index, yf_bound, last_yf_bound);
            }

            for (auto &[op_id, op_bound] : glc->ops_bounds) {
                int last_op_bound = (*bounds_literals)[op_id].size() - 1;

                if (op_bound > last_op_bound) {
                    get_domain_constraints(op_id, op_bound, last_op_bound);
                }
            }
        }
    }

    map<int, string> v_names;
    for (int i = 0; i < (int)bounds_literals->size(); ++i) {
        if (i == yt_index) {
            v_names[i] = string("YT");
        } else if (i == yf_index) {
            v_names[i] = string("YF");
        } else {
            v_names[i] = string(ops[i].get_name());
        }

        auto b = (*bounds_literals)[i];
        for (int j = 0; j < (int)b.size(); ++j) {
            string var_name;
            var_name += string("[");

            if (i == yt_index) {
                var_name += string("YT");
            } else if (i == yf_index) {
                var_name += string("YF");
            } else {
                var_name += string(ops[i].get_name());
            }

            var_name += string(" >= ");
            var_name += to_string(j);
            var_name += string("]");

            v_names[(*bounds_literals)[i][j]] = var_name;
        }
    }

    // Create variables
    for (size_t vi = 0; vi < lp_variables->size(); ++vi) {
        const lp::LPVariable &variable = (*lp_variables)[vi];
        double lb = variable.lower_bound;
        double ub = variable.upper_bound;

        if (vi < ops.size()) {
            double new_ub = (*bounds_literals)[vi].size() - 1;
            ub = new_ub;
            (*lp_variables)[vi].upper_bound = new_ub;
        }

        string name =
            (v_names.count(vi) > 0 ? v_names[vi] : "var_" + to_string(vi));

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
    for (auto &[glc, state] : shr->cache_glcs.cache) {
        if (state != GLCState::NEW) {
            int yt_bound = glc->yt_bound;
            int yf_bound = glc->yf_bound;

            IloRange range((*env), 1.0, IloInfinity);

            if (yt_bound > 0) {
                range.setLinearCoef(
                    (*x)[(*bounds_literals)[yt_index][yt_bound]], 1.0);
            }
            if (yf_bound > 0) {
                range.setLinearCoef(
                    (*x)[(*bounds_literals)[yf_index][yf_bound]], 1.0);
            }
            for (auto &[op_id, op_bound] : glc->ops_bounds) {
                range.setLinearCoef((*x)[(*bounds_literals)[op_id][op_bound]],
                                    1.0);
            }

            c->add(range);
        }
    }

    model->add((*obj));
    model->add((*c));

    cplex = make_shared<IloCplex>((*model));

    cplex->setOut(env->getNullStream());
    cplex->setWarning(env->getNullStream());
    // cplex->setParam(IloCplex::MIPInterval, 1);

    cplex->setParam(IloCplex::Threads, 1);
    cplex->setParam(IloCplex::HeurFreq, -1);
    cplex->setParam(IloCplex::RINSHeur, -1);
    cplex->setParam(IloCplex::MIPEmphasis, IloCplex::MIPEmphasisBestBound);
    cplex->setParam(IloCplex::RootAlg, IloCplex::Primal);
    cplex->setParam(IloCplex::NodeAlg, IloCplex::Primal);
    cplex->setParam(IloCplex::Probe, 3);

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

    // Add MIP start from cache_op_counts
    auto [found, info] = shr->cache_op_counts.get_best_plan();
    if (found && info->sequenciable) {
        OperatorCount plan_counts = shr->plan2opcount(info->plan);

        IloNumVarArray vars((*env));
        IloNumArray vals((*env));
        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            vars.add((*x)[op_id]);
            vals.add(plan_counts[op_id]);
        }
        cplex->addMIPStart(vars, vals);
        vars.end();
        vals.end();
    }

    shr->bounds_literals = bounds_literals;
    shr->env = env;
    shr->model = model;
    shr->x = x;
    shr->c = c;
    shr->obj = obj;
    shr->cplex = cplex;
    shr->lp_variables = lp_variables;
    shr->lp_constraints = lp_constraints;
}

void SOCWSSS::get_domain_constraints(int op_id, int current_bound,
                                     int previous_bound) {
    // Create binary variables
    for (int i = previous_bound + 1; i <= current_bound; ++i) {
        (*bounds_literals)[op_id].emplace_back(lp_variables->size());
        lp_variables->emplace_back(0, 1, 0);
    }

    // Create constraints (1): [Yo >= k] - [Yo >= k - 1] <= 0
    for (int i = current_bound; i > previous_bound; --i) {
        if (i == 1) {
            // We do not create [Yo >= 1] - [Yo >= 0] <= 0
            continue;
        }

        lp::LPConstraint c1(-IloInfinity, 0.0);

        int id_k = (*bounds_literals)[op_id][i];
        int id_k_minus_1 = (*bounds_literals)[op_id][i - 1];

        c1.insert(id_k, 1.0);
        c1.insert(id_k_minus_1, -1.0);

        lp_constraints->emplace_back(c1);
    }

    // Create constraint (2): sum([Yo >= i], i=1...k) - Yo <= 0
    lp::LPConstraint c2(-IloInfinity, 0.0);
    for (int i = 1; i <= current_bound; ++i) {
        int id_k = (*bounds_literals)[op_id][i];
        c2.insert(id_k, 1.0);
    }
    c2.insert(op_id, -1.0);

    // Update constraint 2 of this operator
    int ix2 = (*c2_ops)[op_id];
    if (ix2 == -1) {
        // If constraint 2 doesn't exist for this operator then create it
        (*c2_ops)[op_id] = lp_constraints->size();
        lp_constraints->emplace_back(c2);
    } else {
        // If constraint 2 already exists for this operator then update it
        (*lp_constraints)[ix2] = c2;
    }

    // Create constraint (3): Yo - M*[Yo >= k] <= k - 1
    for (int i = current_bound; i > previous_bound; --i) {
        lp::LPConstraint c3(-IloInfinity, i - 1);
        c3.insert(op_id, 1.0);
        c3.insert((*bounds_literals)[op_id][i], -M);
        lp_constraints->emplace_back(c3);
    }
}

SearchStatus SOCWSSS::step() {
    SearchStatus status = FAILED;

    // Execute a custom branch-and-cut
    while (true) {
        create_cplex_model();

        try {
            cout << "Starting SOCWSSS CPLEX search..." << endl;

            if (opts.get<bool>("mip_loop")) {
                shr->step_mip_loop();
            } else {
                if (opts.get<string>("callbacks").find("lazy") !=
                    string::npos) {
                    cout << "USING LAZY CONSTRAINT CALLBACK" << endl;
                    lazy_callback =
                        make_shared<IloCplex::Callback>(LazyCallback(shr));
                    cplex->use((*lazy_callback));
                }
                if (opts.get<string>("callbacks").find("usercut") !=
                    string::npos) {
                    cout << "USING USERCUT CALLBACK" << endl;
                    usercut_callback =
                        make_shared<IloCplex::Callback>(UserCutCallback(shr));
                    cplex->use((*usercut_callback));
                }
                if (opts.get<string>("callbacks").find("heuristic") !=
                    string::npos) {
                    cout << "USING HEURISTIC CALLBACK" << endl;
                    heuristic_callback =
                        make_shared<IloCplex::Callback>(HeuristicCallback(shr));
                    cplex->use((*heuristic_callback));
                }

                cplex->solve();
            }
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

        if (shr->restart) {
            cout << "RESTARTING..." << endl;
            shr->restarts++;
            shr->restart = false;
        } else {
            break;
        }
    }

    // Print out custom attributes
    shr->printer->show_data(
        shr->seq, cplex->getBestObjValue(), shr->repeated_seqs, shr->restarts,
        shr->cache_op_counts.get_best_plan().second->plan_cost);

    if (cplex->getStatus() == IloAlgorithm::Status::Infeasible ||
        cplex->getStatus() == IloAlgorithm::Status::InfeasibleOrUnbounded) {
        cout << "INFEASIBLE" << endl;
        exit(13);
    }

    // Get final plan
    if (cplex->getStatus() == IloAlgorithm::Status::Optimal) {
        status = SOLVED;

        Plan plan = shr->cache_op_counts.get_best_plan().second->plan;
        if (plan.size() == 0) {
            cout << "SOLUTION NOT FOUND" << endl;
            exit(12);
        }
        set_plan(plan);
    }

    return status;
}

void SOCWSSS::print_statistics() const {
    // statistics.print_detailed_statistics();
    // search_space.print_statistics();
    // pruning_method->print_statistics();
}

static shared_ptr<SearchEngine> _parse(OptionParser &parser) {
    parser.document_synopsis("SOCWSSS", "SOCWSSS");

    parser.add_option<int>("constraint_type", "", "3");
    parser.add_option<string>("constraint_generators", "", "landmarks_h+_flow");
    parser.add_option<string>("heuristic", "", "lmcut");
    parser.add_option<bool>("mip_start", "", "false");
    parser.add_option<bool>("sat_seq", "", "false");
    parser.add_option<bool>("best_seq", "", "false");
    parser.add_option<bool>("minimal_seq", "", "false");
    parser.add_option<bool>("two_seq", "", "false");
    parser.add_option<bool>("print_log", "", "false");
    parser.add_option<bool>("recost", "", "false");
    parser.add_option<bool>("mip_loop", "", "false");
    parser.add_option<bool>("add_cstar_constraint", "", "false");
    parser.add_option<int>("cstar", "", "0");
    parser.add_option<bool>("add_yf_bound", "", "true");
    parser.add_option<bool>("add_yt_bound", "", "true");
    parser.add_option<string>("callbacks", "", "lazy_usercut_heuristic");

    lp::add_lp_solver_option_to_parser(parser);
    SearchEngine::add_pruning_option(parser);
    SearchEngine::add_options_to_parser(parser);

    Options opts = parser.parse();

    shared_ptr<SOCWSSS> engine;
    if (!parser.dry_run()) {
        engine = make_shared<SOCWSSS>(opts);
    }

    return engine;
}

static Plugin<SearchEngine> _plugin("socwsss", _parse);

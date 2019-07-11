#include "benders.h"

Benders::Benders(const Options &opts, TaskProxy &task_proxy,
                 shared_ptr<AbstractTask> task, int k_prealloc_bounds)
    : constraint_type(opts.get<int>("constraint_type")),
      use_seq_constraints(opts.get<bool>("use_seq_constraints")),
      use_lmcut_constraints(opts.get<bool>("use_lmcut_constraints")),
      use_dynamic_merging_constraints(
          opts.get<bool>("use_dynamic_merging_constraints")),
      use_delete_relaxation_constraints(
          opts.get<bool>("use_delete_relaxation_constraints")),
      use_flow_constraints(opts.get<bool>("use_flow_constraints")),
      use_sequencing_cache(opts.get<bool>("use_sequencing_cache")),
      print_current_oc(opts.get<bool>("print_current_oc")),
      print_learned_constraints(opts.get<bool>("print_learned_constraints")),
      print_lp_changes(opts.get<bool>("print_lp_changes")),
      print_search_tree(opts.get<bool>("print_search_tree")),
      max_seqs(opts.get<int>("max_seqs")),
      eval(opts.get<shared_ptr<Evaluator>>("eval")),
      lp_solver_type(opts.get<lp::LPSolverType>("lp_solver_type")),
      cost_type(opts.get<int>("cost_type")),
      max_time(opts.get<double>("max_time")),
      bound(opts.get<int>("bound")),
      pruning(opts.get<shared_ptr<PruningMethod>>("pruning")),
      verbosity(opts.get<int>("verbosity")),
      task_proxy(make_shared<TaskProxy>(task_proxy)),
      task(task),
      start(chrono::system_clock::now()) {
    this->n_ops = this->task_proxy->get_operators().size();
    this->n_vars = this->task_proxy->get_variables().size();

    this->glcs = make_shared<vector<shared_ptr<GLC>>>();
    this->printer_plots = make_shared<PrinterPlots>(this->n_ops, this->n_vars,
                                                    this->glcs, this->start);

    // Create initial variables for LP
    for (OperatorProxy op : this->task_proxy->get_operators()) {
        this->lp_variables.emplace_back(0, this->infinity, op.get_cost(), true);
    }

    // Create variable Y_T
    this->lp_variables.emplace_back(0, this->infinity, 0, true);

    // Create constraint:
    // 0 <= sum(Yo, o in O) - Y_T <= 0
    lp::LPConstraint constraint_yt(0.0, 0.0);
    for (OperatorProxy op : this->task_proxy->get_operators()) {
        constraint_yt.insert(op.get_id(), 1.0);
    }
    constraint_yt.insert(this->n_ops, -1.0);
    this->lp_constraints.emplace_back(constraint_yt);

    // Initialize this->c23_ops
    this->c23_ops = vector<pair<int, int>>(this->n_ops + 1, {-1, -1});

    // Initialize this->bounds_literals
    this->bounds_literals = vector<vector<int>>(this->n_ops + 1, vector<int>());
    for (int op_id = 0; op_id < this->n_ops + 1; ++op_id) {
        this->bounds_literals[op_id].emplace_back(this->lp_variables.size());
        this->lp_variables.emplace_back(0, 1, 0, true);
        this->get_domain_constraints(op_id, k_prealloc_bounds, 0);
    }

    // Create state-equation constraints
    if (this->use_seq_constraints) {
        cout << "Using SEQ constraints" << endl;
        SEQConstraints()(this->task, this->lp_constraints, this->infinity,
                         this->task_proxy->get_initial_state());
    }

    // Add lmcut landmark constraints with bounds literals
    if (this->use_lmcut_constraints) {
        cout << "Using lmcut constraints" << endl;
        LandmarkCutLandmarks(*this->task_proxy)
            .compute_landmarks(
                this->task_proxy->get_initial_state(), nullptr,
                [&](const vector<int> &op_ids, int) {
                    lp::LPConstraint landmark_constraint(1.0, this->infinity);
                    for (int op_id : op_ids) {
                        landmark_constraint.insert(
                            this->bounds_literals[op_id][1], 1.0);
                    }
                    this->lp_constraints.emplace_back(landmark_constraint);
                });
    }

    // Compute dynamic merging
    if (this->use_dynamic_merging_constraints) {
        cout << "Using dynamic merging constraints" << endl;
        DynamicMerging dm(this->lp_solver_type, this->task_proxy,
                          this->infinity, this->lp_variables.size(),
                          this->lp_constraints.size());

        // Copy dynamic merging constraints and variables
        copy(dm.lp_variables.begin(), dm.lp_variables.end(),
             back_inserter(this->lp_variables));
        copy(dm.lp_constraints.begin(), dm.lp_constraints.end(),
             back_inserter(this->lp_constraints));
    }

    // Florian delete relaxation constraints
    if (this->use_delete_relaxation_constraints) {
        cout << "Using delete relaxation constraints" << endl;
        FlorianDeleteRelaxationConstraints(this->task_proxy, this->infinity)(
            this->lp_variables, this->lp_constraints,
            this->task_proxy->get_initial_state());
    }

    // Florian flow constraints
    if (this->use_flow_constraints) {
        cout << "Using flow constraints" << endl;
        FlorianFlowConstraints()(this->task, this->lp_variables,
                                 this->lp_constraints, this->infinity,
                                 this->task_proxy->get_initial_state());
    }
}

void Benders::initialize() {
    this->env = IloEnv();
    this->model = IloModel(this->env);

    this->x = IloNumVarArray(this->env);
    this->c = IloRangeArray(this->env);

    this->obj = IloObjective(IloMinimize(this->env));

    // Create new bounds literals if needed
    for (auto &glc : (*this->glcs)) {
        int yt_bound = glc->yt_bound;
        int last_yt_bound = this->bounds_literals[this->n_ops].size() - 1;

        if (yt_bound > 0 && yt_bound > last_yt_bound) {
            this->get_domain_constraints(this->n_ops, yt_bound, last_yt_bound);
        }
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            int last_op_bound = this->bounds_literals[op_id].size() - 1;

            if (op_bound > last_op_bound) {
                this->get_domain_constraints(op_id, op_bound, last_op_bound);
            }
        }
    }

    // Create variables
    for (size_t vi = 0; vi < this->lp_variables.size(); ++vi) {
        const lp::LPVariable &variable = this->lp_variables[vi];
        double lb = variable.lower_bound;
        double ub = variable.upper_bound;
        this->x.add(IloNumVar(this->env, lb, ub, ILOINT));
        this->obj.setLinearCoef(this->x[vi], variable.objective_coefficient);
    }

    // Create constraints
    for (size_t ci = 0; ci < this->lp_constraints.size(); ++ci) {
        const lp::LPConstraint &constraint = this->lp_constraints[ci];
        double lb = constraint.get_lower_bound();
        double ub = constraint.get_upper_bound();
        this->c.add(IloRange(this->env, lb, ub));

        for (size_t vi = 0; vi < constraint.get_variables().size(); ++vi) {
            int var_id = constraint.get_variables()[vi];
            double coeff = constraint.get_coefficients()[vi];
            this->c[ci].setLinearCoef(this->x[var_id], coeff);
        }
    }

    this->model.add(this->obj);
    this->model.add(this->c);

    this->cplex = IloCplex(this->model);
    this->cplex.setOut(this->env.getNullStream());
    this->cplex.setWarning(this->env.getNullStream());
    this->cplex.setParam(IloCplex::Param::MIP::Strategy::Search,
                         IloCplex::Traditional);
    this->cplex.setParam(IloCplex::Param::Threads, 1);
    this->cplex.setParam(IloCplex::Param::Preprocessing::Presolve, IloFalse);
    this->cplex.setParam(IloCplex::Param::Preprocessing::Reduce, 0);

    // this->cplex.exportModel("model.lp");

    // this->cplex.setParam(IloCplex::Param::MIP::Strategy::HeuristicFreq, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::MIRCut, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::Implied, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::Gomory, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::FlowCovers, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::PathCut, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::LiftProj, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::ZeroHalfCut, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::Cliques, -1);
    // this->cplex.setParam(IloCplex::Param::MIP::Cuts::Covers, -1);
}

pair<int, IloExpr> Benders::get_cut(shared_ptr<GLC> learned_glc) {
    int missing_bounds = 0;
    IloExpr cut(this->env);

    int yt_bound = learned_glc->yt_bound;
    int last_yt_bound = this->bounds_literals[this->n_ops].size() - 1;

    if (yt_bound > 0) {
        if (yt_bound <= last_yt_bound) {
            cut += this->x[this->bounds_literals[this->n_ops][yt_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / yt_bound) * this->x[this->n_ops];
        }
    }

    for (auto &[op_id, op_bound] : learned_glc->ops_bounds) {
        int last_op_bound = this->bounds_literals[op_id].size() - 1;

        if (op_bound <= last_op_bound) {
            cut += this->x[this->bounds_literals[op_id][op_bound]];
        } else {
            missing_bounds++;
            cut += (1.0 / op_bound) * this->x[op_id];
        }
    }

    return {missing_bounds, cut};
}

void Benders::get_domain_constraints(int op_id, int current_bound,
                                     int previous_bound) {
    // Create binary variables
    for (int i = previous_bound + 1; i <= current_bound; ++i) {
        this->bounds_literals[op_id].emplace_back(this->lp_variables.size());
        this->lp_variables.emplace_back(0, 1, 0, true);
    }

    // Create constraints (1): [Yo >= k] - [Yo >= k - 1] <= 0
    for (int i = current_bound; i > previous_bound; --i) {
        lp::LPConstraint c1(-this->infinity, 0.0);

        int id_k = this->bounds_literals[op_id][i];
        int id_k_minus_1 = this->bounds_literals[op_id][i - 1];

        c1.insert(id_k, 1.0);
        c1.insert(id_k_minus_1, -1.0);

        this->lp_constraints.emplace_back(c1);
    }

    // Create constraint (2): sum([Yo >= i], i=1...k) - Yo <= 0
    lp::LPConstraint c2(-this->infinity, 0.0);
    for (int i = 1; i <= current_bound; ++i) {
        int id_k = this->bounds_literals[op_id][i];
        c2.insert(id_k, 1.0);
    }
    c2.insert(op_id, -1.0);

    // Create constraint (3): Yo - M*[Yo >= k] <= k - 1
    double M = 1e10;
    lp::LPConstraint c3(-this->infinity, current_bound - 1);
    c3.insert(op_id, 1.0);
    c3.insert(this->bounds_literals[op_id][current_bound], -M);

    // Update constraints 2 and 3 of this operator
    auto [ix2, ix3] = this->c23_ops[op_id];
    if (ix2 == -1 && ix3 == -1) {
        // If constraints 2 and 3 don't exist for this operator then create them
        this->lp_constraints.emplace_back(c2);
        this->lp_constraints.emplace_back(c3);

        this->c23_ops[op_id] = {this->lp_constraints.size() - 2,
                                this->lp_constraints.size() - 1};
    } else {
        // If constraints 2 and 3 already exist for this operator then update
        // them
        this->lp_constraints[ix2] = c2;
        this->lp_constraints[ix3] = c3;
    }
}

pair<bool, SequenceInfo> Benders::get_sequence(int h_oc,
                                               OperatorCount op_count) {
    if (this->use_sequencing_cache &&
        this->cache_op_counts.count(op_count) > 0) {
        this->repeated_seqs++;
        return {true, this->cache_op_counts[op_count]};
    }

    bool status = false;
    shared_ptr<GLC> learned_glc;
    Plan plan;
    int plan_cost = 0;

    if (this->max_seqs != -1 && this->seq > this->max_seqs) {
        return {false, {status, learned_glc, plan, plan_cost}};
    }

    this->seq++;

    cout.setstate(ios_base::failbit);

    // Setup A* search
    Options opts;
    opts.set("eval", this->eval);
    opts.set("cost_type", this->cost_type);
    opts.set("max_time", this->max_time);
    opts.set("bound", this->bound);
    opts.set("pruning", this->pruning);
    opts.set("verbosity", this->verbosity);
    auto temp = search_common::create_astar_open_list_factory_and_f_eval(opts);
    opts.set("open", temp.first);
    opts.set("f_eval", temp.second);
    opts.set("reopen_closed", true);
    vector<shared_ptr<Evaluator>> preferred_list;
    opts.set("preferred", preferred_list);

    // Custom options
    opts.set("initial_op_count", op_count);
    opts.set("h_oc", h_oc);
    opts.set("constraint_type", this->constraint_type);
    opts.set("seq", this->seq);
    opts.set("print_search_tree", this->print_search_tree);

    shared_ptr<soc_astar_search::SOCAStarSearch> astar =
        make_shared<soc_astar_search::SOCAStarSearch>(opts);

    chrono::time_point<chrono::system_clock> start =
        chrono::system_clock::now();

    // Perform A* search
    astar->search();

    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    this->printer_plots->plot_max_f_found.emplace_back(astar->max_f_found);
    this->printer_plots->plot_astar_time.emplace_back(elapsed_microseconds);
    this->printer_plots->plot_nodes_expanded.emplace_back(
        astar->get_statistics().get_expanded());

    cout.clear();

    if (astar->found_solution()) {
        // Get plan found by A*
        plan = astar->get_plan();

        // Calculate plan cost
        for (OperatorID op_id : plan) {
            plan_cost += this->task_proxy->get_operators()[op_id].get_cost();
        }

        cout << "SEQ " << this->seq << ": SOLUTION FOUND WITH COST "
             << plan_cost << endl;
        status = true;
    } else {
        learned_glc = astar->learned_glc;
        cout << "SEQ " << this->seq
             << ": SOLUTION NOT FOUND WITH MAX F: " << h_oc << endl;
        status = false;
    }

    SequenceInfo ret = {status, learned_glc, plan, plan_cost};
    if (this->use_sequencing_cache || status) {
        this->cache_op_counts.add(op_count, ret);
    }
    return {false, ret};
}

void Benders::update_and_prints(int seq, double original_lp_h_oc, int lp_h_oc,
                                vector<double> original_solution,
                                OperatorCount rounded_solution) {
    // Store values to plots
    this->printer_plots->plot_lp_all_constraints.emplace_back(
        this->c.getSize());
    this->printer_plots->plot_lp_all_variables.emplace_back(this->x.getSize());
    this->printer_plots->plot_lp_oc_solution.emplace_back(lp_h_oc);
    this->printer_plots->plot_max_op_count.emplace_back(*max_element(
        rounded_solution.begin(),
        rounded_solution.begin() + task_proxy->get_operators().size()));

    // Print out current operator counting
    this->fn_print_current_oc(seq, original_lp_h_oc, lp_h_oc, original_solution,
                              rounded_solution);

    // Print out learned constraints
    this->fn_print_learned_constraints(seq, original_solution);
}

void Benders::fn_print_current_oc(int seq, double original_lp_h_oc, int lp_h_oc,
                                  vector<double> &original_solution,
                                  OperatorCount &rounded_solution) {
    if (this->print_current_oc) {
        unordered_map<int, string> ids_to_names;
        ids_to_names[this->n_ops] = "Y_T";
        for (int bound = 0;
             bound < (int)this->bounds_literals[this->n_ops].size(); ++bound) {
            int var_id = this->bounds_literals[this->n_ops][bound];
            ids_to_names[var_id] = "[Y_T >= " + to_string(bound) + "]";
        }
        for (int op_id = 0; op_id < (int)this->bounds_literals.size() - 1;
             ++op_id) {
            ids_to_names[op_id] =
                "Y_{" + task_proxy->get_operators()[op_id].get_name() + "}";
            vector<int> &bounds = this->bounds_literals[op_id];
            for (int bound = 0; bound < (int)bounds.size(); ++bound) {
                int &var_id = bounds[bound];
                ids_to_names[var_id] =
                    "[Y_{" + task_proxy->get_operators()[op_id].get_name() +
                    "} >= " + to_string(bound) + "]";
            }
        }

        cout << string(80, '*') << endl;
        cout << "(" << seq << ") "
             << "OPERATOR COUNTING:" << endl;
        cout << "\tZ: "
             << "(" << original_lp_h_oc << ") " << lp_h_oc << endl;
        for (int i = 0; i < (int)rounded_solution.size(); ++i) {
            cout << fixed << "\t" << ids_to_names[i] << " -> "
                 << "(" << original_solution[i] << ") " << rounded_solution[i]
                 << endl;
        }

        // cout << "OTHER LP VARIABLES:" << endl;
        // for (int i = task_proxy->get_operators().size(); i < (int)
        // original_solution.size(); ++i) {
        //    cout << fixed << "\t" << ids_to_names[i] << " -> " <<
        //    original_solution[i] << endl;
        //}
        cout << string(80, '*') << endl;
    }
}

void Benders::fn_print_learned_constraints(
    int seq, vector<double> & /*original_solution*/) {
    if (this->print_learned_constraints && this->glcs->size() > 0) {
        cout << string(80, '*') << endl;
        cout << "(" << seq << ") "
             << "LEARNED CONSTRAINTS:" << endl;
        for (int glc_id = 0; glc_id < (int)this->glcs->size(); ++glc_id) {
            shared_ptr<GLC> glc = this->glcs->at(glc_id);
            int yt_bound = glc->yt_bound;
            int right_side_coeff = glc->right_side_coeff;

            cout << "(" << glc_id << ") ";

            if (yt_bound != -1) {
                // int var_id = this->bounds_literals[this->n_ops][yt_bound];
                cout << "\t"
                     << "[Y_T >= " << to_string(yt_bound) << "]";
                // cout << " -> " << original_solution[var_id];
            }
            cout << endl;

            for (auto &[op_id, bound] : glc->ops_bounds) {
                string name = task_proxy->get_operators()[op_id].get_name();
                // int var_id = this->bounds_literals[op_id][bound];
                cout << "\t + "
                     << "[Y_{" << name << "} >= " << to_string(bound) << "]";
                // cout << " -> " << original_solution[var_id];
                cout << endl;
            }

            cout << "\t >= " << right_side_coeff << endl;
        }
        cout << string(80, '*') << endl;
    }
}
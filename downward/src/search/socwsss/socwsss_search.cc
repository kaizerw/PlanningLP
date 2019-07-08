#include "socwsss_search.h"

namespace SOCWSSS_search {
SOCWSSSSearch::SOCWSSSSearch(const Options &opts)
    : SearchEngine(opts),
      lp_solver_type(lp::LPSolverType(opts.get_enum("lpsolver"))),
      mip(opts.get<bool>("mip")),
      constraint_type(opts.get<int>("constraint_type")),
      get_op_count_from_bounds(opts.get<bool>("get_op_count_from_bounds")),
      print_current_oc(opts.get<bool>("print_current_oc")),
      print_learned_constraints(opts.get<bool>("print_learned_constraints")),
      print_lp_changes(opts.get<bool>("print_lp_changes")),
      print_search_tree(opts.get<bool>("print_search_tree")),
      dynamic_merging(opts.get<bool>("dynamic_merging")),
      max_seqs(opts.get<int>("max_seqs")),
      max_time_to_solve(opts.get<int>("max_time_to_solve")),
      max_mem_to_solve(opts.get<double>("max_mem_to_solve")),
      eval(opts.get<shared_ptr<Evaluator>>("eval")),
      cost_type(opts.get<int>("cost_type")),
      max_time(opts.get<double>("max_time")),
      bound(opts.get<int>("bound")),
      pruning(opts.get<shared_ptr<PruningMethod>>("pruning")),
      verbosity(opts.get<int>("verbosity")) {}

void SOCWSSSSearch::initialize() {
    cout << "Initializing SOCWSSS search..." << endl;

    // Construct a dummy lp solver to get its infinity
    this->lp_solver_type = this->lp_solver_type;
    this->infinity = lp::LPSolver(this->lp_solver_type).get_infinity();

    // Create initial variables for LP
    for (OperatorProxy op : task_proxy.get_operators()) {
        double lower_bound = 0;
        double upper_bound = infinity;
        double objective_coefficient = op.get_cost();
        this->all_lp_variables.push_back(lp::LPVariable(
            lower_bound, upper_bound, objective_coefficient, this->mip));
        this->gen_var_ids++;
    }

    // Create state-equation constraints
    SEQConstraints()(this->task, this->all_lp_constraints, infinity,
                     task_proxy.get_initial_state());

    // Create variable Y_T
    this->all_lp_variables.push_back(
        lp::LPVariable(0.0, infinity, 0.0, this->mip));
    this->yt_index = this->gen_var_ids++;

    // Create constraint:
    // 0 <= sum(Yo, o in O) - Y_T <= 0
    lp::LPConstraint constraint_yt(0.0, 0.0);
    for (OperatorProxy op : task_proxy.get_operators()) {
        constraint_yt.insert(op.get_id(), 1.0);
    }
    constraint_yt.insert(this->yt_index, -1.0);
    this->all_lp_constraints.push_back(constraint_yt);

    // Initialize this->c23_ops
    this->c23_ops =
        vector<tuple<int, int>>(this->n_ops + 1, make_tuple(-1, -1));

    // Initialize this->bounds_literals
    this->bounds_literals = vector<vector<int>>(this->n_ops + 1, vector<int>());
    for (int op_id = 0; op_id < this->n_ops + 1; ++op_id) {
        this->bounds_literals[op_id].push_back(this->gen_var_ids++);
        this->all_lp_variables.push_back(
            lp::LPVariable(0.0, 1.0, 0.0, this->mip));
    }

    // Add lmcut landmark constraints with bounds literals
    LandmarkCutLandmarks(task_proxy)
        .compute_landmarks(
            task_proxy.get_initial_state(), nullptr,
            [&](const vector<int> &op_ids, int) {
                lp::LPConstraint landmark_constraint(1.0, infinity);
                for (int op_id : op_ids) {
                    if (this->bounds_literals[op_id].size() == 1) {
                        this->get_domain_constraints(op_id, 1, 0);
                    }
                    landmark_constraint.insert(this->bounds_literals[op_id][1],
                                               1.0);
                }
                this->all_lp_constraints.push_back(landmark_constraint);
            });

    // Compute dynamic merging
    if (this->dynamic_merging) {
        DynamicMerging dm(this->lp_solver_type,
                          make_shared<TaskProxy>(task_proxy), this->infinity,
                          this->all_lp_variables.size(),
                          this->all_lp_constraints.size());

        this->gen_var_ids += dm.lp_variables.size();

        // Copy dynamic merging constraints and variables
        vector<lp::LPVariable> dm_lp_variables = dm.lp_variables;
        vector<lp::LPConstraint> dm_lp_constraints = dm.lp_constraints;
        copy(dm_lp_variables.begin(), dm_lp_variables.end(),
             back_inserter(this->all_lp_variables));
        copy(dm_lp_constraints.begin(), dm_lp_constraints.end(),
             back_inserter(this->all_lp_constraints));
    }

    // DeleteRelaxationConstraints(this->task_proxy, this->lp_solver_type,
    //                            this->infinity, this->n_ops)();
}

SearchStatus SOCWSSSSearch::step() {
    // Store total initial time
    chrono::time_point<chrono::system_clock> start =
        chrono::system_clock::now();

    this->glcs = make_shared<vector<shared_ptr<GLC>>>();
    this->printer_plots =
        make_shared<PrinterPlots>(this->n_ops, this->n_vars, this->glcs, start);

    // Status of the last attempt to sequence op counts
    SearchStatus status = FAILED;

    // Begin iterative process
    for (this->seq = 1; this->max_seqs == -1 || this->seq <= this->max_seqs;
         this->seq++) {
        this->get_op_count();
        if (this->h_oc == -1) {
            cout << "INFEASIBLE" << endl;
            status = FAILED;
            break;
        }

        status = this->get_sequence();
        if (status == SOLVED) break;

        int partial_solve_time = chrono::duration_cast<chrono::minutes>(
                                     chrono::system_clock::now() - start)
                                     .count();
        // If max time to solve reached interrupt
        if (this->max_time_to_solve != -1 &&
            partial_solve_time >= this->max_time_to_solve) {
            cout << "TIMEOUT" << endl;
            status = FAILED;
            break;
        }

        FILE *file = fopen("/proc/self/status", "r");
        int mem = -1;
        char line[128];

        while (fgets(line, 128, file) != NULL) {
            if (strncmp(line, "VmPeak:", 6) == 0) {
                mem = strlen(line);
                const char *p = line;
                while (*p < '0' || *p > '9') p++;
                line[mem - 3] = '\0';
                mem = atoi(p);
                break;
            }
        }
        fclose(file);

        // If max memory to solve reached interrupt
        if (this->max_mem_to_solve != -1 &&
            (mem / 1048576.0) >= this->max_mem_to_solve) {
            cout << "MEMOUT" << endl;
            status = FAILED;
            break;
        }
    }

    // Store total finish time
    this->total_solve_time = chrono::duration_cast<chrono::microseconds>(
                                 chrono::system_clock::now() - start)
                                 .count();

    // Print data
    printer_plots->show_data(this->seq, this->best_bound_found, 0, 0);

    return status;
}

void SOCWSSSSearch::get_op_count() {
    chrono::time_point<chrono::system_clock> start =
        chrono::system_clock::now();

    // Clean new variables and new/updated constraints vectors
    this->new_lp_variables.clear();
    this->new_lp_constraints.clear();
    this->updated_lp_constraints.clear();

    // Create new variables and constraints for the last learned constraints
    for (shared_ptr<GLC> new_glc : this->last_learned_glcs) {
        this->glcs->push_back(new_glc);
        int yt_bound = new_glc->yt_bound;
        int last_yt_bound = this->bounds_literals[this->yt_index].size() - 1;
        int right_side_coeff = new_glc->right_side_coeff;

        lp::LPConstraint constraint_last_glc(right_side_coeff, infinity);
        if (yt_bound > last_yt_bound) {
            this->get_domain_constraints(this->yt_index, yt_bound,
                                         last_yt_bound);
        }
        if (yt_bound > 0) {
            constraint_last_glc.insert(
                this->bounds_literals[this->yt_index][yt_bound], 1.0);
        }
        for (pair<int, int> &bound_literal : new_glc->ops_bounds) {
            int op_id = bound_literal.first;
            int op_bound = bound_literal.second;
            int last_op_bound = this->bounds_literals[op_id].size() - 1;

            if (op_bound > last_op_bound) {
                this->get_domain_constraints(op_id, op_bound, last_op_bound);
            }
            constraint_last_glc.insert(this->bounds_literals[op_id][op_bound],
                                       1.0);
        }
        this->all_lp_constraints.push_back(constraint_last_glc);
        this->new_lp_constraints.push_back(this->all_lp_constraints.size() - 1);
    }

    // Create new LP solver
    lp::LPSolver lp_solver(this->lp_solver_type);

    // Load variables and constraints in LP
    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE,
                           this->all_lp_variables, this->all_lp_constraints);

    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    this->printer_plots->plot_pre_lp_time.push_back(elapsed_microseconds);

    // Print out added lp variables and constraints
    this->fn_print_lp_changes();

    start = chrono::system_clock::now();

    // Solve mip or LP depending on the mip flag
    this->mip ? lp_solver.solve_mip() : lp_solver.solve();

    elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                               chrono::system_clock::now() - start)
                               .count();

    // Extract optimal solution
    int lp_h_oc;
    vector<double> original_solution;
    if (lp_solver.has_optimal_solution()) {
        lp_h_oc = round(lp_solver.get_objective_value());
        original_solution = lp_solver.extract_solution();
    } else {
        lp_h_oc = -1;
        original_solution =
            vector<double>(task_proxy.get_operators().size(), 0);
    }

    // Round up operator counting variables
    vector<int> rounded_solution;
    transform(original_solution.begin(),
              original_solution.begin() + task_proxy.get_operators().size(),
              back_inserter(rounded_solution),
              [](double value) { return (int)ceil(value); });

    // Get operators counting from the bound literals
    if (this->get_op_count_from_bounds) {
        this->fn_get_op_count_from_bounds(original_solution, rounded_solution);
    }

    // Update operator counting heuristic value
    int rounded_h_oc =
        accumulate(rounded_solution.begin(), rounded_solution.end(), 0);

    // Store values to plots
    this->printer_plots->plot_lp_added_constraints.push_back(
        this->new_lp_constraints.size());
    this->printer_plots->plot_lp_added_variables.push_back(
        this->new_lp_variables.size());
    this->printer_plots->plot_lp_updated_constraints.push_back(
        this->updated_lp_constraints.size());
    this->printer_plots->plot_lp_all_constraints.push_back(
        lp_solver.get_num_constraints());
    this->printer_plots->plot_lp_all_variables.push_back(
        lp_solver.get_num_variables());
    this->printer_plots->plot_lp_time.push_back(elapsed_microseconds);
    this->printer_plots->plot_lp_oc_solution.push_back(lp_h_oc);
    this->printer_plots->plot_lp_rounded_oc_solution.push_back(rounded_h_oc);
    this->printer_plots->plot_max_op_count.push_back(*max_element(
        rounded_solution.begin(),
        rounded_solution.begin() + task_proxy.get_operators().size()));

    // Print out current operator counting
    this->fn_print_current_oc(lp_h_oc, rounded_h_oc, original_solution,
                              rounded_solution);

    // Print out learned constraints
    this->fn_print_learned_constraints(original_solution);

    // Return rounded operator counting solution and not rounded lp solution
    this->h_oc = lp_h_oc;
    this->op_count = rounded_solution;

    // Update this->best_bound_found
    this->best_bound_found = max(this->best_bound_found, this->h_oc);
}

SearchStatus SOCWSSSSearch::get_sequence() {
    printer_plots->show_data(this->seq, this->best_bound_found, 0, 0);

    SearchStatus status = FAILED;

    // Setup A* search
    shared_ptr<soc_astar_search::SOCAStarSearch> astar;
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
    opts.set("op_count", this->op_count);
    opts.set("h_oc", this->h_oc);
    opts.set("constraint_type", this->constraint_type);
    opts.set("seq", this->seq);
    opts.set("print_search_tree", this->print_search_tree);

    astar = make_shared<soc_astar_search::SOCAStarSearch>(opts);

    chrono::time_point<chrono::system_clock> start =
        chrono::system_clock::now();

    // Perform A* search
    astar->search();

    double elapsed_microseconds = chrono::duration_cast<chrono::microseconds>(
                                      chrono::system_clock::now() - start)
                                      .count();
    this->printer_plots->plot_max_f_found.push_back(astar->max_f_found);
    this->printer_plots->plot_astar_time.push_back(elapsed_microseconds);
    this->printer_plots->plot_nodes_expanded.push_back(
        astar->get_statistics().get_expanded());

    if (astar->found_solution()) {
        // Get plan found by A*
        Plan plan = astar->get_plan();

        // Calculate plan cost
        int plan_cost = 0;
        for (OperatorID op_id : plan) {
            plan_cost += task_proxy.get_operators()[op_id].get_cost();
        }

        // Store best plan so far and its cost
        if (plan_cost <= this->cost_best_plan_so_far) {
            this->best_plan_so_far = plan;
            this->cost_best_plan_so_far = plan_cost;
        }

        // If cost_best_plan_so_far is less or equal to h_oc then we've found an
        // optimal plan
        if (this->cost_best_plan_so_far <= this->h_oc) {
            this->set_plan(this->best_plan_so_far);
            status = SOLVED;
        }
    } else {
        this->last_learned_glcs = astar->learned_glcs;

        status = FAILED;
    }

    return status;
}

void SOCWSSSSearch::get_domain_constraints(int op_id, int current_bound,
                                           int previous_bound) {
    // Create binary variables
    for (int i = previous_bound + 1; i <= current_bound; ++i) {
        this->bounds_literals[op_id].push_back(this->gen_var_ids++);
        this->all_lp_variables.push_back(
            lp::LPVariable(0.0, 1.0, 0.0, this->mip));
        this->new_lp_variables.push_back(this->all_lp_variables.size() - 1);
    }

    // Create constraints (1): [Yo >= k] - [Yo >= k - 1] <= 0
    for (int i = current_bound; i > previous_bound; --i) {
        lp::LPConstraint c1(-infinity, 0.0);

        int id_k = this->bounds_literals[op_id][i];
        int id_k_minus_1 = this->bounds_literals[op_id][i - 1];

        c1.insert(id_k, 1.0);
        c1.insert(id_k_minus_1, -1.0);

        this->all_lp_constraints.push_back(c1);
        this->new_lp_constraints.push_back(this->all_lp_constraints.size() - 1);
    }

    // Create constraint (2): sum([Yo >= i], i=1...k) - Yo <= 0
    lp::LPConstraint c2(-infinity, 0.0);
    for (int i = 1; i <= current_bound; ++i) {
        int id_k = this->bounds_literals[op_id][i];
        c2.insert(id_k, 1.0);
    }
    c2.insert(op_id, -1.0);

    // Create constraint (3): Yo - M*[Yo >= k] <= k - 1
    double M = 1e10;
    lp::LPConstraint c3(-infinity, current_bound - 1);
    c3.insert(op_id, 1.0);
    c3.insert(this->bounds_literals[op_id][current_bound], -M);

    // Update constraints 2 and 3 of this operator
    int ix2, ix3;
    tie(ix2, ix3) = this->c23_ops[op_id];
    if (ix2 == -1 && ix3 == -1) {
        // If constraints 2 and 3 don't exist for this operator then create them
        this->all_lp_constraints.push_back(c2);
        this->all_lp_constraints.push_back(c3);

        this->new_lp_constraints.push_back(this->all_lp_constraints.size() - 2);
        this->new_lp_constraints.push_back(this->all_lp_constraints.size() - 1);

        this->c23_ops[op_id] = make_tuple(this->all_lp_constraints.size() - 2,
                                          this->all_lp_constraints.size() - 1);
    } else {
        // If constraints 2 and 3 already exist for this operator then update
        // them
        this->all_lp_constraints[ix2] = c2;
        this->all_lp_constraints[ix3] = c3;

        this->updated_lp_constraints.push_back(ix2);
        this->updated_lp_constraints.push_back(ix3);
    }
}

void SOCWSSSSearch::fn_print_lp_changes() {
    if (this->print_lp_changes && (this->new_lp_constraints.size() > 0 ||
                                   this->new_lp_variables.size() > 0)) {
        unordered_map<int, string> ids_to_names;
        ids_to_names[this->yt_index] = "Y_T";
        for (int bound = 0;
             bound < (int)this->bounds_literals[this->yt_index].size();
             ++bound) {
            int &var_id = this->bounds_literals[this->yt_index][bound];
            ids_to_names[var_id] = "[Y_T >= " + to_string(bound) + "]";
        }
        for (int op_id = 0; op_id < (int)this->bounds_literals.size() - 1;
             ++op_id) {
            ids_to_names[op_id] =
                "Y_{" + task_proxy.get_operators()[op_id].get_name() + "}";
            vector<int> &bounds = this->bounds_literals[op_id];
            for (int bound = 0; bound < (int)bounds.size(); ++bound) {
                int &var_id = bounds[bound];
                ids_to_names[var_id] =
                    "[Y_{" + task_proxy.get_operators()[op_id].get_name() +
                    "} >= " + to_string(bound) + "]";
            }
        }

        cout << string(80, '*') << endl;
        cout << "(" << this->seq << ") "
             << "NEW VARIABLES ADDED TO LP:" << endl;
        for (int vi : this->new_lp_variables) {
            lp::LPVariable v = this->all_lp_variables[vi];
            cout << "\t(" << (vi + 1) << ") " << v.lower_bound << " <= ";
            cout << v.objective_coefficient << " * " << ids_to_names[vi];
            cout << " <= " << v.upper_bound << endl;
        }
        cout << "(" << this->seq << ") "
             << "NEW CONSTRAINTS ADDED TO LP:" << endl;
        for (int ci : this->new_lp_constraints) {
            lp::LPConstraint c = this->all_lp_constraints[ci];
            cout << "\t(" << (ci + 1) << ") " << c.get_lower_bound() << " <= ";
            cout << showpos;
            for (size_t i = 0; i < c.get_variables().size(); ++i) {
                cout << c.get_coefficients()[i] << " * "
                     << ids_to_names[c.get_variables()[i]] << " ";
            }
            cout << noshowpos;
            cout << "<= " << c.get_upper_bound() << endl;
        }
        cout << "(" << this->seq << ") "
             << "UPDATED CONSTRAINTS IN LP:" << endl;
        for (int ci : this->updated_lp_constraints) {
            lp::LPConstraint c = this->all_lp_constraints[ci];
            cout << "\t(" << (ci + 1) << ") " << c.get_lower_bound() << " <= ";
            cout << showpos;
            for (size_t i = 0; i < c.get_variables().size(); ++i) {
                cout << c.get_coefficients()[i] << " * "
                     << ids_to_names[c.get_variables()[i]] << " ";
            }
            cout << noshowpos;
            cout << "<= " << c.get_upper_bound() << endl;
        }
        cout << string(80, '*') << endl;
    }
}

void SOCWSSSSearch::fn_print_current_oc(int lp_h_oc, int rounded_h_oc,
                                        vector<double> &original_solution,
                                        vector<int> &rounded_solution) {
    if (this->print_current_oc) {
        unordered_map<int, string> ids_to_names;
        ids_to_names[this->yt_index] = "Y_T";
        for (int bound = 0;
             bound < (int)this->bounds_literals[this->yt_index].size();
             ++bound) {
            int var_id = this->bounds_literals[this->yt_index][bound];
            ids_to_names[var_id] = "[Y_T >= " + to_string(bound) + "]";
        }
        for (int op_id = 0; op_id < (int)this->bounds_literals.size() - 1;
             ++op_id) {
            ids_to_names[op_id] =
                "Y_{" + task_proxy.get_operators()[op_id].get_name() + "}";
            vector<int> &bounds = this->bounds_literals[op_id];
            for (int bound = 0; bound < (int)bounds.size(); ++bound) {
                int &var_id = bounds[bound];
                ids_to_names[var_id] =
                    "[Y_{" + task_proxy.get_operators()[op_id].get_name() +
                    "} >= " + to_string(bound) + "]";
            }
        }

        cout << string(80, '*') << endl;
        cout << "(" << this->seq << ") "
             << "OPERATOR COUNTING:" << endl;
        cout << "\tZ: "
             << "(" << lp_h_oc << ") " << rounded_h_oc << endl;
        for (int i = 0; i < (int)rounded_solution.size(); ++i) {
            cout << fixed << "\t" << ids_to_names[i] << " -> "
                 << "(" << original_solution[i] << ") " << rounded_solution[i]
                 << endl;
        }

        // cout << "OTHER LP VARIABLES:" << endl;
        // for (int i = task_proxy.get_operators().size(); i < (int)
        // original_solution.size(); ++i) {
        //    cout << fixed << "\t" << ids_to_names[i] << " -> " <<
        //    original_solution[i] << endl;
        //}
        cout << string(80, '*') << endl;
    }
}

void SOCWSSSSearch::fn_print_learned_constraints(
    vector<double> &original_solution) {
    if (this->print_learned_constraints && this->glcs->size() > 0) {
        cout << string(80, '*') << endl;
        cout << "(" << this->seq << ") "
             << "LEARNED CONSTRAINTS:" << endl;
        for (int glc_id = 0; glc_id < (int)this->glcs->size(); ++glc_id) {
            shared_ptr<GLC> glc = this->glcs->at(glc_id);
            int yt_bound = glc->yt_bound;
            int right_side_coeff = glc->right_side_coeff;

            cout << "(" << glc_id << ") ";

            if (yt_bound != -1) {
                int var_id = this->bounds_literals[this->yt_index][yt_bound];
                cout << "\t"
                     << "[Y_T >= " << to_string(yt_bound) << "]";
                cout << " -> " << original_solution[var_id];
            }
            cout << endl;

            for (pair<int, int> &bound_literal : glc->ops_bounds) {
                int op_id = bound_literal.first;
                int bound = bound_literal.second;
                string name = task_proxy.get_operators()[op_id].get_name();
                int var_id = this->bounds_literals[op_id][bound];
                cout << "\t + "
                     << "[Y_{" << name << "} >= " << to_string(bound) << "]";
                cout << " -> " << original_solution[var_id] << endl;
            }

            cout << "\t >= " << right_side_coeff << endl;
        }
        cout << string(80, '*') << endl;
    }
}

void SOCWSSSSearch::fn_get_op_count_from_bounds(
    vector<double> &original_solution, vector<int> &rounded_solution) {
    rounded_solution.assign(task_proxy.get_operators().size(), 0);

    for (size_t glc_id = 0; glc_id < this->glcs->size(); ++glc_id) {
        shared_ptr<GLC> glc = this->glcs->at(glc_id);
        for (pair<int, int> &bound_literal : glc->ops_bounds) {
            int op_id = bound_literal.first;
            int bound = bound_literal.second;

            int var_id = this->bounds_literals[op_id][bound];
            double lp_solution = original_solution[var_id];

            if (lp_solution > 0 && bound > rounded_solution[op_id]) {
                rounded_solution[op_id] = bound;
            }
        }
    }
}

void SOCWSSSSearch::print_statistics() const {
    statistics.print_detailed_statistics();
    search_space.print_statistics();
    // pruning_method->print_statistics();
}

static shared_ptr<SearchEngine> _parse(OptionParser &parser) {
    parser.document_synopsis("SOCWSSS Search", "SOCWSSS Search");

    parser.add_option<bool>("mip", "if solve a mip or not", "true");
    parser.add_option<int>("constraint_type", "constraint type added on fail",
                           "1");
    parser.add_option<bool>("get_op_count_from_bounds",
                            "if get op counts from bound literals", "false");
    parser.add_option<bool>("print_current_oc",
                            "if print current oc in each iteration", "false");
    parser.add_option<bool>(
        "print_learned_constraints",
        "if print learned generalized landmark constraints in each iteration",
        "false");
    parser.add_option<bool>("print_lp_changes", "if print lp changes", "false");
    parser.add_option<bool>("print_search_tree", "if print search tree",
                            "false");
    parser.add_option<bool>("dynamic_merging", "if use dynamic merging or not",
                            "true");
    parser.add_option<int>("max_seqs", "maximum attempts to sequence solution",
                           "-1");
    parser.add_option<int>("max_time_to_solve",
                           "maximum time to solve in minutes", "-1");
    parser.add_option<double>("max_mem_to_solve",
                              "maximum memory to solve in GB", "-1");
    parser.add_option<shared_ptr<Evaluator>>("eval", "evaluator for h-value",
                                             "lmcut()");

    lp::add_lp_solver_option_to_parser(parser);
    SearchEngine::add_pruning_option(parser);
    SearchEngine::add_options_to_parser(parser);

    Options opts = parser.parse();

    shared_ptr<SOCWSSS_search::SOCWSSSSearch> engine;
    if (!parser.dry_run()) {
        engine = make_shared<SOCWSSS_search::SOCWSSSSearch>(opts);
    }

    return engine;
}

static Plugin<SearchEngine> _plugin("socwsss", _parse);
}  // namespace SOCWSSS_search

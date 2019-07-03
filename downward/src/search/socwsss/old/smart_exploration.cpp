#include "exploration.cpp"
#include "../soc/GLC.cpp"
#include "my_state.cpp"


class SmartExploration {

    State orig_initial_state;
    vector<FactProxy> initial_state_facts;
    vector<FactProxy> goal_state;
    vector<OperatorProxy> operators;
    vector<shared_ptr<WConstraintGenerator>> constraint_generators;
    lp::LPSolverType lp_solver_type;
    bool mip;
    bool print_current_oc;
    bool print_generalized_constraints;
    bool print_constraints;
    bool use_only_basic_constraint;
    bool increment_op_counts;
    bool discover_action_landmarks;
    bool use_intersect_action_landmarks;
    double infinity;
    vector<lp::LPVariable> initial_variables;
    vector<lp::LPConstraint> initial_constraints;
    double mip_time;
    double hmax_time;
    int max_iter;

    tuple<SearchStatus, GLC> try_to_sequence_op_count(int last_h_oc, vector<double> last_op_count_used) {
        // Initialize open and closed list for breadth-first search
        // and a generator to states ids
        int generator_states_ids = 0;
        map<int, tuple<int, int>> parent;
        list<MyState> open_list, closed_list;
        open_list.push_back(MyState(generator_states_ids++, initial_state_facts, last_op_count_used));
        SearchStatus global_status = FAILED;
        GLC new_generalized_landmark_constraint(last_h_oc + 1, 1);

        // Start breadth-first search
        while (!open_list.empty()) {
            // Get a state from open list and add to closed list
            MyState current_state = open_list.front();
            open_list.pop_front();
            closed_list.push_back(current_state);

            // Perform a delete-relaxed exploration
            std::chrono::time_point<std::chrono::system_clock> hmax_start, hmax_end;
            hmax_start = std::chrono::system_clock::now();

            int status = Exploration(current_state, goal_state, operators, true)();

            hmax_end = std::chrono::system_clock::now();
            double elapsed_microseconds = std::chrono::duration_cast<std::chrono::microseconds>(hmax_end - hmax_start).count();
            hmax_time += elapsed_microseconds;

            // If relaxed exploration failed then we need to increment some operator counting
            if (status == FAILED) {
                bool increment_ops_worked = false, action_landmark_worked = false, intersect_action_landmarks_worked = false;

                if (increment_op_counts && !use_only_basic_constraint) {
                    // Try to increment operator counting for each operator
                    for (int op_id = 0; op_id < (int) current_state.op_count.size(); ++op_id) {
                        vector<double> temp_oc_count = current_state.op_count;
                        temp_oc_count[op_id] += 1;
                        // Perform a delete-relaxed exploration with new operator counting
                        MyState current_state_modified(-1, current_state.facts, temp_oc_count);

                        hmax_start = std::chrono::system_clock::now();

                        status = Exploration(current_state_modified, goal_state, operators, true)();

                        hmax_end = std::chrono::system_clock::now();
                        double elapsed_microseconds = std::chrono::duration_cast<std::chrono::microseconds>(hmax_end - hmax_start).count();
                        hmax_time += elapsed_microseconds;

                        // If exploration succeded we might need one more of this operator
                        if (status == SOLVED) {
                            bool in_generalized_landmark_constraints = false;
                            for (pair<int, int> bound_literal : new_generalized_landmark_constraint.ops_bounds) {
                                if (bound_literal.first == op_id) {
                                    bound_literal.second++;
                                    in_generalized_landmark_constraints = true;
                                    break;
                                }
                            }

                            // Add new discovered operator count to new_generalized_landmark_constraint
                            if (!in_generalized_landmark_constraints) {
                                new_generalized_landmark_constraint.add_op_bound(op_id, last_op_count_used[op_id] + 1);
                            }

                            // Some operator counting increment has worked
                            increment_ops_worked = true;
                        }
                    }
                }

                if (discover_action_landmarks && !use_only_basic_constraint) {
                    // Discover action landmarks and add to new generalized landmark constraint
                    vector<int> action_landmarks_ids;
                    action_landmarks_ids = discover_action_landmarks_ids(current_state);
                    for (int op_id : action_landmarks_ids) {
                        bool in_generalized_landmark_constraints = false;
                        for (pair<int, int> bound_literal : new_generalized_landmark_constraint.ops_bounds) {
                            if (bound_literal.first == op_id) {
                                in_generalized_landmark_constraints = true;
                                break;
                            }
                        }

                        // Add bound literal only if last operator counting is zero
                        // and op bound is not already in generalized_landmark_constraints
                        if (last_op_count_used[op_id] == 0 && !in_generalized_landmark_constraints) {
                            new_generalized_landmark_constraint.add_op_bound(op_id, 1);
                            action_landmark_worked = true;
                        }
                    }
                }

                if (use_intersect_action_landmarks && !use_only_basic_constraint) {
                    // Discover action landmarks for current state
                    vector<int> state_action_landmarks_ids = discover_action_landmarks_ids(current_state);

                    // Discover action landmarks for successor states
                    vector<int> successors_action_landmarks_ids;
                    // Create a copy of current state without operator counting restrictions
                    MyState current_state_modified(-1, current_state.facts, vector<double>(operators.size(), -1));
                    for (OperatorProxy op : get_applicable_ops(current_state_modified)) {
                        vector<int> successor_action_landmarks_ids = discover_action_landmarks_ids(apply_op(op, current_state_modified));
                        copy(successor_action_landmarks_ids.begin(), successor_action_landmarks_ids.end(), back_inserter(successors_action_landmarks_ids));
                    }

                    // Compute the intersection between action landmarks from current state and successors states
                    vector<int> final_action_landmarks_ids;
                    sort(state_action_landmarks_ids.begin(), state_action_landmarks_ids.end());
                    sort(successors_action_landmarks_ids.begin(), successors_action_landmarks_ids.end());
                    set_intersection(state_action_landmarks_ids.begin(), state_action_landmarks_ids.end(),
                                     successors_action_landmarks_ids.begin(), successors_action_landmarks_ids.end(),
                                     back_inserter(final_action_landmarks_ids));

                    // Add literal bound only if current state operator counting is zero
                    for (int op_id : final_action_landmarks_ids) {
                        if (current_state.op_count[op_id] == 0) {
                            new_generalized_landmark_constraint.add_op_bound(op_id, last_op_count_used[op_id] + 1);
                            intersect_action_landmarks_worked = true;
                        }
                    }

                    // Break exploration
                    if (intersect_action_landmarks_worked) {
                        break;
                    }
                }

                if (!increment_ops_worked && !action_landmark_worked && !intersect_action_landmarks_worked) {
                    // If increment operator countings or action landmarks do not solve the task
                    // we add the basic generalized landmark constraint
                    // [Y_T >= last_h_oc + 1] + {[o.id >= o.last_bound + 1] | for o in ops} >= 1
                    for (OperatorProxy op : operators) {
                        int op_id = op.get_id();
                        new_generalized_landmark_constraint.add_op_bound(op_id, last_op_count_used[op_id] + 1);
                    }
                    break;
                }
            }

            // Generate state's successors
            for (OperatorProxy op : get_applicable_ops(current_state)) {
                // Apply non-relaxed operator
                MyState successor_state = apply_op(op, current_state);
                // Generate an id to this new state
                successor_state.id = generator_states_ids++;
                // We can explore this state if it is neither in open nor closed lists
                if (!in_list(successor_state, closed_list) &&
                    !in_list(successor_state, open_list)) {

                    // Update parent information to construct plan later
                    parent[successor_state.id] = make_tuple(op.get_id(), current_state.id);

                    // If the resulting state is a goal then the search ends
                    if (is_goal(successor_state)) {
                        // Construct plan using parents informations
                        this->plan = construct_plan(successor_state.id, parent);
                        global_status = SOLVED;
                        open_list.clear();
                        break;
                    }
                    // If not a goal the search continues
                    open_list.push_back(successor_state);
                }
            }
        }

        return make_tuple(global_status, new_generalized_landmark_constraint);
    }

    tuple<vector<lp::LPVariable>, vector<lp::LPConstraint>, map<string, int>> create_lp_constraints(vector<GLC> &generalized_landmark_constraints) {
        // Clean new variables and new constraints vectors
        vector<lp::LPVariable> lp_variables;
        vector<lp::LPConstraint> lp_constraints;

        // Map variables names to ids
        map<string, int> y_names_to_ids;

        // Generator for variables ids
        int generator_variables_ids = 0;

        // Assign variables ids to operators (the variables already exist in LP)
        for (OperatorProxy op : operators) {
            string name = "Y_{" + op.get_name() + "}";
            int id = generator_variables_ids++;
            y_names_to_ids[name] = id;
        }

        // Create variable Y_T
        y_names_to_ids["Y_T"] = generator_variables_ids++;
        lp_variables.push_back(lp::LPVariable(0.0, infinity, 0.0, mip));

        // Create constraint:
        // 0 <= sum(Yo, o in O) - Y_T <= 0
        lp::LPConstraint constraint_yt(0.0, 0.0);
        for (OperatorProxy op : operators) {
            string name = "Y_{" + op.get_name() + "}";
            constraint_yt.insert(y_names_to_ids[name], 1.0);
        }
        constraint_yt.insert(y_names_to_ids["Y_T"], -1.0);
        lp_constraints.push_back(constraint_yt);

        if (generalized_landmark_constraints.size() > 0) {
            // Create constraints for Y_T
            create_domain_constraints(y_names_to_ids, generator_variables_ids, "Y_T", generalized_landmark_constraints.back().yt_bound, lp_variables, lp_constraints);

            // Create constraints (4):
            // [Y_T >= L + 1] + [Yo >= k] >= 1
            for (GLC glc : generalized_landmark_constraints) {
                int yt_bound = glc.yt_bound;
                int right_side_coeff = glc.right_side_coeff;

                lp::LPConstraint c4(right_side_coeff, infinity);
                c4.insert(y_names_to_ids["[Y_T >= " + to_string(yt_bound) + "]"], 1.0);

                for (pair<int, int> bound_literal : glc.ops_bounds) {
                    int op_id = bound_literal.first;
                    int bound = bound_literal.second;
                    string name = operators[op_id].get_name();

                    create_domain_constraints(y_names_to_ids, generator_variables_ids, "Y_{" + name + "}", bound, lp_variables, lp_constraints);

                    c4.insert(y_names_to_ids["[Y_{" + name + "} >= " + to_string(bound) + "]"], 1.0);
                }
                lp_constraints.push_back(c4);
            }
        }

        return make_tuple(lp_variables, lp_constraints, y_names_to_ids);
    }

    void create_domain_constraints(map<string, int>& y_names_to_ids, int& generator_variables_ids, string var_name, int bound, vector<lp::LPVariable> &lp_variables, vector<lp::LPConstraint> &lp_constraints) {
        // Create binary variables if they do not exist yet
        for (int i = 0; i <= bound; ++i) {
            string name = "[" + var_name + " >= " + to_string(i) + "]";
            if (y_names_to_ids.find(name) == y_names_to_ids.end()) {
                y_names_to_ids[name] = generator_variables_ids++;
                lp_variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, mip));
            }
        }

        // Create constraints (1):
        // [Yo >= k] - [Yo >= k - 1] <= 0
        for (int i = bound; i > 0; --i) {
            lp::LPConstraint c1(-infinity, 0.0);

            int id_k = y_names_to_ids["[" + var_name + " >= " + to_string(i) + "]"];
            int id_k_minus_1 = y_names_to_ids["[" + var_name + " >= " + to_string(i - 1) + "]"];

            c1.insert(id_k, 1.0);
            c1.insert(id_k_minus_1, -1.0);

            lp_constraints.push_back(c1);
        }

        // Create constraint (2):
        // sum([Yo >= i], i=1...k) - Yo <= 0
        lp::LPConstraint c2(-infinity, 0.0);
        for (int i = 1; i <= bound; ++i) {
            int id_k = y_names_to_ids["[" + var_name + " >= " + to_string(i) + "]"];
            c2.insert(id_k, 1.0);
        }
        c2.insert(y_names_to_ids[var_name], -1.0);
        lp_constraints.push_back(c2);

        // Create constraint (3):
        // Yo - M*[Yo >= k] <= k - 1
        double M = 1e10;
        lp::LPConstraint c3(-infinity, bound - 1);
        c3.insert(y_names_to_ids[var_name], 1.0);
        c3.insert(y_names_to_ids["[" + var_name + " >= " + to_string(bound) + "]"], -M);
        lp_constraints.push_back(c3);
    }

    Plan construct_plan(int goal_state_id, map<int, tuple<int, int>> parent) {
        // This is a classical backtracking algorithm to reconstruct paths based on parents informations
        Plan plan;
        int previous_state_id = goal_state_id;
        int previous_op_id = -1;

        while (get<1>(parent[previous_state_id]) != 0) {
            tie(previous_op_id, previous_state_id) = parent[previous_state_id];
            plan.push_back(OperatorID(operators[previous_op_id].get_id()));
        }
        plan.push_back(OperatorID(operators[get<0>(parent[previous_state_id])].get_id()));

        reverse(plan.begin(), plan.end());
        return plan;
    }

    tuple<vector<double>, int> compute_op_count(vector<lp::LPVariable> lp_variables, vector<lp::LPConstraint> lp_constraints) {
        // Create new LP solver
        lp::LPSolver lp_solver(lp_solver_type);

        // Initialize variables and constraints
        vector<lp::LPVariable> variables = initial_variables;
        vector<lp::LPConstraint> constraints = initial_constraints;

        // Add new variables and new constraints
        copy(lp_variables.begin(), lp_variables.end(), back_inserter(variables));
        copy(lp_constraints.begin(), lp_constraints.end(), back_inserter(constraints));

        // Load variables and constraints in LP
        lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, variables, constraints);

        // Update initial constraints from constraint generators in LP
        for (const auto &generator : constraint_generators) {
            bool dead_end = generator->update_constraints(this->orig_initial_state, lp_solver);
            if (dead_end) {
                lp_solver.clear_temporary_constraints();
                return make_tuple(vector<double>(), FAILED);
            }
        }

        // Solve MIP or LP depending on the mip flag
        std::chrono::time_point<std::chrono::system_clock> start, end;
        start = std::chrono::system_clock::now();
        if (mip) {
            lp_solver.solve_mip();
        } else {
            lp_solver.solve();
        }
        end = std::chrono::system_clock::now();
        double elapsed_microseconds = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
        mip_time += elapsed_microseconds;

        // Extract objective optimal solution
        int result;
        if (lp_solver.has_optimal_solution()) {
            double epsilon = 0.01;
            double objective_value = lp_solver.get_objective_value();
            result = ceil(objective_value - epsilon);
        } else {
            result = FAILED;
        }

        // Extract primal optimal solution
        vector<double> solution = lp_solver.extract_solution();

        // Erase temporary variables from operator counting
        //solution.erase(solution.begin() + operators.size(), solution.end());

        // Round up operator counting variables
        //transform(solution.begin(), solution.end(), solution.begin(), [](double value){
        //    return ceil(value - 0.01);
        //});

        // Update operator counting heuristic value
        result = accumulate(solution.begin(), solution.begin() + operators.size(), 0);

        // Remove temporary constraints from LP
        lp_solver.clear_temporary_constraints();

        // Return operator counting solution and heuristic estimate
        return make_tuple(solution, result);
    }

    void print_generalized_landmark_constraints(vector<GLC> generalized_landmark_constraints, int itc) {
        if (print_generalized_constraints) {
            cout << "(" << itc << ") " << "GENERALIZED LANDMARK CONSTRAINTS:" << endl;
            for (GLC glc : generalized_landmark_constraints) {
                int yt_bound = glc.yt_bound;
                int right_side_coeff = glc.right_side_coeff;
                cout << "\t[Y_T >= " << yt_bound << "]";

                for (pair<int, int> bound_literal : glc.ops_bounds) {
                    int op_id = bound_literal.first;
                    int bound = bound_literal.second;
                    string name = operators[op_id].get_name();
                    cout << " + [Y_{" << name << "} >= " << bound << "]";
                }

                cout << " >= " << right_side_coeff << endl;
            }
        }
    }

    void print_added_lp_constraints(vector<lp::LPConstraint> lp_constraints, map<string, int> y_names_to_ids, int itc) {
        if (print_constraints) {
            map<int, string> inv_y_names_to_ids;
            for (pair<string, int> i : y_names_to_ids) {
                inv_y_names_to_ids[i.second] = i.first;
            }

            cout << string(80, '*') << endl;
            cout << "(" << itc << ") " << "NEW CONSTRAINTS ADDED TO LP:" << endl;
            for (int ci = 0; ci < (int) lp_constraints.size(); ++ci) {
                lp::LPConstraint c = lp_constraints[ci];
                cout << "\t(" << ci << ") " << c.get_lower_bound() << " <= ";
                cout << showpos;
                for (size_t i = 0; i < c.get_variables().size(); ++i) {
                    cout << c.get_coefficients()[i] << " * " << inv_y_names_to_ids[c.get_variables()[i]] << " ";
                }
                cout << noshowpos;
                cout << "<= " << c.get_upper_bound() << endl;
            }
        }
    }

    void print_oc(vector<double> op_count, int h_oc, map<string, int> y_names_to_ids, int itc) {
        if (print_current_oc) {
            map<int, string> inv_y_names_to_ids;
            for (pair<string, int> i : y_names_to_ids) {
                inv_y_names_to_ids[i.second] = i.first;
            }

            cout << string(80, '*') << endl;
            cout << "(" << itc << ") " << "OPERATOR COUNTING:" << endl;
            cout << "\tZ: " << h_oc << endl;
            for (int i = 0; i < (int) op_count.size(); ++i) {
                cout << "\t" << inv_y_names_to_ids[i] << " -> " << op_count[i] << endl;
            }
            cout << string(80, '*') << endl;
        }
    }

    vector<int> discover_action_landmarks_ids(MyState state) {
        vector<int> action_landmarks_ids;

        // This is the classical action landmark discovery algorithm:
        // We try to solve the relaxed task removing each operator at time.
        // If it is not possible to solve the task without some operator,
        // this operator is an action landmark
        for (OperatorProxy op : operators) {
            int op_id = op.get_id();

            // We set the current operator counting to zero
            // and leave the other countings unlimited
            vector<double> new_op_count(operators.size(), -1);
            new_op_count[op_id] = 0;
            MyState new_state(-1, state.facts, new_op_count);

             if (Exploration(new_state, goal_state, operators, true)() == FAILED) {
                action_landmarks_ids.push_back(op_id);
            }
        }

        return action_landmarks_ids;
    }

    bool is_goal(MyState state) {
        // Tuplefy goal and current state facts
        vector<tuple<int, int>> goal_facts, state_facts;
        function<tuple<int, int>(FactProxy)> tuplefy = [](FactProxy i){
            return make_tuple(i.get_variable().get_id(), i.get_value());
        };
        transform(state.facts.begin(), state.facts.end(), back_inserter(state_facts), tuplefy);
        transform(goal_state.begin(), goal_state.end(), back_inserter(goal_facts), tuplefy);

        // If all goal state facts are valid in current state then current state is a goal
        function<bool(tuple<int, int>)> test =[&](tuple<int, int> i){
            return find(state_facts.begin(), state_facts.end(), i) != state_facts.end();
        };
        return all_of(goal_facts.begin(), goal_facts.end(), test);
    }

    vector<OperatorProxy> get_applicable_ops(MyState state) {
        // Get all applicable operators in current state using operator_is_applicable_in_state function
        // We additionally test if the operator counting is different from zero
        // If the operator counting is positive its application is limited
        // If the operator counting is negative its application is unlimited
        vector<OperatorProxy> applicable_ops;
        function<bool(OperatorProxy)> filter = [&](OperatorProxy op){
            return state.op_count[op.get_id()] != 0 && is_applicable(op, state);
        };
        copy_if(operators.begin(), operators.end(), back_inserter(applicable_ops), filter);

        return applicable_ops;
    }

    bool is_applicable(OperatorProxy op, MyState state) {
        // Get all preconditions facts of this operator
        vector<FactProxy> preconditions = simplify<PreconditionsProxy, FactProxy>(op.get_preconditions());

        // Tuplefy precondition and current state facts
        vector<tuple<int, int>> pre_facts, state_facts;
        function<tuple<int, int>(FactProxy)> tuplefy = [](FactProxy i){
            return make_tuple(i.get_variable().get_id(), i.get_value());
        };
        transform(state.facts.begin(), state.facts.end(), back_inserter(state_facts), tuplefy);
        transform(preconditions.begin(), preconditions.end(), back_inserter(pre_facts), tuplefy);

        // The operator is applicable in current state
        // if all its precondition facts are valid in current state
        function<bool(tuple<int, int>)> test = [&](tuple<int, int> i){
            return find(state_facts.begin(), state_facts.end(), i) != state_facts.end();
        };
        return all_of(pre_facts.begin(), pre_facts.end(), test);
    }

    MyState apply_op(OperatorProxy op, MyState state) {
        bool relaxed = false;

        MyState new_state = state;
        // Decrement operator counting of the applied operator
        new_state.op_count[op.get_id()] -= 1;

        // Get and simplify effect facts of this operator
        vector<EffectProxy> effects = simplify<EffectsProxy, EffectProxy>(op.get_effects());
        vector<FactProxy> facts_effects;
        function<FactProxy(EffectProxy)> transformer = [](EffectProxy i){
            return i.get_fact();
        };
        transform(effects.begin(), effects.end(), back_inserter(facts_effects), transformer);

        // If the operator application is not relaxed
        // we must override the previous facts with the new ones specified in effects
        // Those facts not in effects remain the same
        if (!relaxed) {
            vector<FactProxy> temp_facts;
            function<bool(FactProxy)> filter = [&](FactProxy new_state_fact){
                return find_if(facts_effects.begin(), facts_effects.end(), [&](FactProxy effect_fact){
                    return effect_fact.get_variable().get_id() == new_state_fact.get_variable().get_id();
                }) == facts_effects.end();
            };
            copy_if(new_state.facts.begin(), new_state.facts.end(), back_inserter(temp_facts), filter);
            new_state.facts = temp_facts;
        }

        // Add new facts to new state
        copy(facts_effects.begin(), facts_effects.end(), back_inserter(new_state.facts));

        return new_state;
    }

    bool in_list(MyState state, list<MyState> list) {
        // This method only verifies if a state is in the given list
        // The search only uses the set of facts
        // The operator counting is not relevant here
        vector<tuple<int, int>> state_facts_tuples;
        function<tuple<int, int>(FactProxy)> tuplefy = [](FactProxy i){
            return make_tuple(i.get_variable().get_id(), i.get_value());
        };
        transform(state.facts.begin(), state.facts.end(), back_inserter(state_facts_tuples), tuplefy);

        return find_if(list.begin(), list.end(), [&](MyState i){
            vector<tuple<int, int>> i_facts_tuples;
            transform(i.facts.begin(), i.facts.end(), back_inserter(i_facts_tuples), tuplefy);

            function<bool(tuple<int, int>)> test = [&](tuple<int, int> fact){
                return find(i_facts_tuples.begin(), i_facts_tuples.end(), fact) != i_facts_tuples.end();
            };
            return all_of(state_facts_tuples.begin(), state_facts_tuples.end(), test);
        }) != list.end();
    }

public:

    Plan plan;

    SmartExploration(const State &initial_state,
                     GoalsProxy goal_state,
                     OperatorsProxy operators,
                     vector<lp::LPVariable> initial_variables,
                     vector<lp::LPConstraint> initial_constraints,
                     vector<shared_ptr<WConstraintGenerator>> constraint_generators,
                     lp::LPSolverType lp_solver_type,
                     bool mip,
                     bool print_current_oc,
                     bool print_generalized_constraints,
                     bool print_constraints,
                     bool use_only_basic_constraint,
                     bool increment_op_counts,
                     bool discover_action_landmarks,
                     bool use_intersect_action_landmarks,
                     int max_iter)
                     : orig_initial_state(initial_state) {
        // Initialize custom attributes
        this->mip_time = 0;
        this->hmax_time = 0;

        // Initialize initial and goal states and operators
        this->initial_state_facts = simplify<State, FactProxy>(initial_state);
        this->goal_state = simplify<GoalsProxy, FactProxy>(goal_state);
        this->operators = simplify<OperatorsProxy, OperatorProxy>(operators);

        // Initialize initial variables and operators
        this->initial_variables = initial_variables;
        this->initial_constraints = initial_constraints;

        // Initialize options from command line
        this->mip = mip;
        this->print_current_oc = print_current_oc;
        this->print_generalized_constraints = print_generalized_constraints;
        this->print_constraints = print_constraints;
        this->use_only_basic_constraint = use_only_basic_constraint;
        this->increment_op_counts = increment_op_counts;
        this->discover_action_landmarks = discover_action_landmarks;
        this->use_intersect_action_landmarks = use_intersect_action_landmarks;
        this->max_iter = max_iter;

        // Construct a dummy lp solver to get its infinity
        this->lp_solver_type = lp_solver_type;
        this->infinity = lp::LPSolver(lp_solver_type).get_infinity();

        this->constraint_generators = constraint_generators;
    }

    SearchStatus operator()() {
        // Store search initial time
        std::chrono::time_point<std::chrono::system_clock> search_start, search_end;
        search_start = std::chrono::system_clock::now();

        // Iteration counter
        int itc = 0;

        // Initialize max_f_found
        int max_f_found = 0;

        // Initialize mean_ops_by_constraint
        double mean_ops_by_constraint = 0;

        // Initialize times_made_progress
        int times_made_progress = 0;

        // Initialize useful variables
        int current_h_oc;
        vector<double> current_op_count;
        vector<GLC> generalized_landmark_constraints;
        GLC new_generalized_landmark_constraint;

        // Initialize useful variables to create_lp_constraint
        vector<lp::LPVariable> lp_variables;
        vector<lp::LPConstraint> lp_constraints;
        map<string, int> y_names_to_ids;

        // Status of the last attempt to sequence op counts
        SearchStatus sequence_status = FAILED;

        // Compute initial operator counting
        tie(lp_variables, lp_constraints, y_names_to_ids) = create_lp_constraints(generalized_landmark_constraints);
        // Print out for check the new constraints
        print_added_lp_constraints(lp_constraints, y_names_to_ids, itc);

        tie(current_op_count, current_h_oc) = compute_op_count(lp_variables, lp_constraints);
        // Print out current operator counting
        print_oc(current_op_count, current_h_oc, y_names_to_ids, itc);

        while (sequence_status != SOLVED && (itc < max_iter || max_iter == -1)) {
            tie(sequence_status, new_generalized_landmark_constraint) = try_to_sequence_op_count(current_h_oc, current_op_count);
            if (sequence_status == FAILED) {
                generalized_landmark_constraints.push_back(new_generalized_landmark_constraint);

                // Update mean_ops_by_constraint
                mean_ops_by_constraint += ((double) new_generalized_landmark_constraint.ops_bounds.size() / operators.size());

                // Increment iteration counter
                itc++;

                // Print out for checking the new generalized landmark constraints
                print_generalized_landmark_constraints(generalized_landmark_constraints, itc);

                // Compute current operator counting
                tie(lp_variables, lp_constraints, y_names_to_ids) = create_lp_constraints(generalized_landmark_constraints);
                // Print out for check the new constraints
                print_added_lp_constraints(lp_constraints, y_names_to_ids, itc);

                double last_h_oc = current_h_oc;
                tie(current_op_count, current_h_oc) = compute_op_count(lp_variables, lp_constraints);
                // Update times_made_progress
                if (current_h_oc > last_h_oc) {
                    times_made_progress++;
                }
                // Print out current operator counting
                print_oc(current_op_count, current_h_oc, y_names_to_ids, itc);
            }

            // Update max_f_found
            max_f_found = max(max_f_found, current_h_oc);
        }

        // Store search finish time
        search_end = std::chrono::system_clock::now();
        double search_time = std::chrono::duration_cast<std::chrono::microseconds>(search_end - search_start).count();
        // Subtract mip time from search time
        search_time -= mip_time;

        // Divide mean_ops_by_contraint by number of generalized landmark constraints generated during search
        mean_ops_by_constraint /= generalized_landmark_constraints.size();

        // Print out custom attributes
        cout << "Number of seqs: " << itc << endl;
        cout << fixed << "MIP time: " << (mip_time / 1e6) << "s" << scientific << endl;
        cout << fixed << "Hmax time: " << (hmax_time / 1e6) << "s" << scientific << endl;
        cout << fixed << "Search time: " << (search_time / 1e6) << "s" << scientific << endl;
        cout << "Number of ops: " << operators.size() << endl;
        cout << "Max f found: " << max_f_found << endl;
        cout << fixed << "Mean ops by constraint: " << mean_ops_by_constraint << scientific << endl;
        cout << "Times made progress: " << times_made_progress << endl;

        return sequence_status;
    }

    template<class T1, class T2>
    vector<T2> simplify(T1 in) {
        vector<T2> out = vector<T2>();
        for (size_t i = 0; i < in.size(); ++i) {
            out.push_back(in[i]);
        }
        return out;
    }

};

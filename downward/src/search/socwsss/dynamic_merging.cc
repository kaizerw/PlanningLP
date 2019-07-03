#include "dynamic_merging.h"

DynamicMerging::DynamicMerging(lp::LPSolverType lp_solver_type,
                               shared_ptr<TaskProxy> task_proxy,
                               double infinity, int lp_variables_offset,
                               int lp_constraints_offset,
                               bool use_safety_improvement,
                               bool use_only_upper_bounds)
    : lp_solver_type(lp_solver_type),
      task_proxy(task_proxy),
      infinity(infinity),
      lp_variables_offset(lp_variables_offset),
      lp_constraints_offset(lp_constraints_offset),
      use_safety_improvement(use_safety_improvement),
      use_only_upper_bounds(use_only_upper_bounds) {
    OperatorsProxy ops = this->task_proxy->get_operators();
    VariablesProxy vars = this->task_proxy->get_variables();

    // Initialize initial state
    this->initial_state = this->task_proxy->get_initial_state().get_values();

    // Initialize goal state
    this->goal_state = vector<int>(vars.size(), numeric_limits<int>::max());
    for (FactProxy goal : this->task_proxy->get_goals()) {
        this->goal_state[goal.get_variable().get_id()] = goal.get_value();
    }

    // Preprocesss prevails, pres and posts
    this->get_prevails_pres_posts();

    // Compute vars that have incomplete actions (UB)
    // (depends on get_prevails_pres_posts())
    // this->compute_has_incomplete_actions();

    // Compute goal mutexes (UB and goal reformulation)
    // this->compute_goal_mutexes();

    // Goal reformulation
    // (depends on compute_goal_mutexes())
    // this->goal_reformulation();

    // Create initial variables for LP
    for (OperatorProxy op : ops) {
        double lower_bound = 0;
        double upper_bound = infinity;
        double objective_coefficient = op.get_cost();
        this->lp_variables.emplace_back(
            lp::LPVariable(lower_bound, upper_bound, objective_coefficient));
    }

    /*
    // Create internal constraint generators
    constraint_generators.emplace_back(static_pointer_cast<ConstraintGenerator>(
        make_shared<LMCutConstraints>()));
    constraint_generators.emplace_back(static_pointer_cast<ConstraintGenerator>(
        make_shared<StateEquationConstraints>()));
    Options opts_sys, opts_pho;
    opts_sys.set("pattern_max_size", 2);
    opts_sys.set("only_interesting_patterns", true);
    opts_pho.set(
        "patterns",
        static_pointer_cast<PatternCollectionGenerator>(
            make_shared<PatternCollectionGeneratorSystematic>(opts_sys)));
    constraint_generators.emplace_back(static_pointer_cast<ConstraintGenerator>(
        make_shared<PhOConstraints>(opts_pho)));

    // Create initial constraints for LP
    for (const auto &generator : this->constraint_generators) {
        generator->initialize_constraints(task, this->lp_constraints, infinity);
    }
    */

    // Add lmcut landmark constraints
    LandmarkCutLandmarks(*task_proxy)
        .compute_landmarks(
            task_proxy->get_initial_state(), nullptr,
            [&](const vector<int> &op_ids, int) {
                lp::LPConstraint landmark_constraint(1.0, this->infinity);
                for (int op_id : op_ids) {
                    landmark_constraint.insert(op_id, 1.0);
                }
                this->lp_constraints.emplace_back(landmark_constraint);
            });

    this->initialize_seq_constraints();

    this->fixed_variables = this->lp_variables.size();
    this->fixed_constraints = this->lp_constraints.size();

    // Perform Dynamic Merging
    this->dynamic_merging();
}

void DynamicMerging::goal_reformulation() {
    VariablesProxy vars = this->task_proxy->get_variables();

    bool finished = false;
    while (!finished) {
        finished = true;

        vector<vector<int>> new_goals =
            vector<vector<int>>(vars.size(), vector<int>());
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            for (int val = 0; val < vars[var_id].get_domain_size(); ++val) {
                if (!this->is_goal_mutex[var_id][val] &&
                    this->goal_state[var_id] == numeric_limits<int>::max()) {
                    new_goals[var_id].emplace_back(val);
                }
            }
        }

        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            if (new_goals[var_id].size() == 1) {
                this->goal_state[var_id] = new_goals[var_id][0];
                finished = false;
            }
        }

        if (!finished) {
            this->compute_goal_mutexes();
        }
    }
}

void DynamicMerging::add_indices_to_constraint(lp::LPConstraint &constraint,
                                               const set<int> &indices,
                                               double coefficient) {
    for (int index : indices) {
        constraint.insert(index, coefficient);
    }
}

void DynamicMerging::initialize_seq_constraints() {
    VariablesProxy vars = this->task_proxy->get_variables();
    propositions.reserve(vars.size());
    for (VariableProxy var : vars) {
        propositions.emplace_back(vector<Proposition>(var.get_domain_size()));
    }
    is_safe.resize(vars.size(), false);
    for (FactProxy goal : this->task_proxy->get_goals()) {
        is_safe[goal.get_variable().get_id()] = true;
    }
    OperatorsProxy ops = this->task_proxy->get_operators();
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        const OperatorProxy &op = ops[op_id];
        vector<int> precondition(vars.size(), -1);
        for (FactProxy condition : op.get_preconditions()) {
            int pre_var_id = condition.get_variable().get_id();
            precondition[pre_var_id] = condition.get_value();
        }
        for (EffectProxy effect_proxy : op.get_effects()) {
            FactProxy effect = effect_proxy.get_fact();
            int var = effect.get_variable().get_id();
            int pre = precondition[var];
            int post = effect.get_value();
            assert(post != -1);

            if (pre != -1) {
                if (pre != post) {
                    propositions[var][post].always_produced_by.emplace(op_id);
                    propositions[var][pre].always_consumed_by.emplace(op_id);
                }
            } else {
                propositions[var][post].sometimes_produced_by.emplace(op_id);
                is_safe[var] = false;
                for (int other_value = 0;
                     other_value < effect.get_variable().get_domain_size();
                     ++other_value) {
                    if (other_value != post) {
                        propositions[var][other_value]
                            .sometimes_consumed_by.emplace(op_id);
                    }
                }
            }
        }
    }

    for (vector<Proposition> &var_propositions : propositions) {
        for (Proposition &prop : var_propositions) {
            lp::LPConstraint constraint(-infinity, infinity);
            add_indices_to_constraint(constraint, prop.always_produced_by, 1.0);
            if (use_only_upper_bounds) {
                add_indices_to_constraint(constraint,
                                          prop.sometimes_consumed_by, -1.0);
            } else {
                add_indices_to_constraint(constraint,
                                          prop.sometimes_produced_by, 1.0);
            }
            add_indices_to_constraint(constraint, prop.always_consumed_by,
                                      -1.0);
            if (!constraint.empty()) {
                prop.constraint_index = this->lp_constraints.size();
                this->lp_constraints.emplace_back(constraint);
            }
        }
    }
}

bool DynamicMerging::update_seq_constraints(const State &state,
                                            lp::LPSolver &lp_solver) {
    // Compute the bounds for the rows in the LP.
    for (size_t var = 0; var < propositions.size(); ++var) {
        int num_values = propositions[var].size();
        for (int value = 0; value < num_values; ++value) {
            const Proposition &prop = propositions[var][value];
            // Set row bounds.
            if (prop.constraint_index >= 0) {
                double lower_bound = 0;
                /* If we consider the current value of var, there must be an
                   additional consumer. */
                if (state[var].get_value() == value) {
                    --lower_bound;
                }
                /* If we consider the goal value of var, there must be an
                   additional producer. */
                if (goal_state[var] == value) {
                    ++lower_bound;
                }
                if (use_safety_improvement && is_safe[var]) {
                    int upper_bound = lower_bound;
                    this->lp_constraints[prop.constraint_index].set_lower_bound(
                        lower_bound);
                    this->lp_constraints[prop.constraint_index].set_upper_bound(
                        upper_bound);
                    lp_solver.set_constraint_lower_bound(prop.constraint_index,
                                                         lower_bound);
                    lp_solver.set_constraint_upper_bound(prop.constraint_index,
                                                         upper_bound);
                } else if (use_only_upper_bounds) {
                    int upper_bound = lower_bound;
                    if (goal_state[var] == numeric_limits<int>::max()) {
                        ++upper_bound;
                    }
                    this->lp_constraints[prop.constraint_index].set_upper_bound(
                        upper_bound);
                    lp_solver.set_constraint_upper_bound(prop.constraint_index,
                                                         upper_bound);
                } else {
                    this->lp_constraints[prop.constraint_index].set_lower_bound(
                        lower_bound);
                    lp_solver.set_constraint_lower_bound(prop.constraint_index,
                                                         lower_bound);
                }
            }
        }
    }
    return false;
}

void DynamicMerging::compute_has_incomplete_actions() {
    VariablesProxy vars = this->task_proxy->get_variables();
    OperatorsProxy ops = this->task_proxy->get_operators();

    this->has_incomplete_actions = vector<bool>(vars.size(), false);
    for (VariableProxy var : vars) {
        for (OperatorProxy op : ops) {
            int post = this->posts[op.get_id()][var.get_id()];
            int pre = this->pres[op.get_id()][var.get_id()];

            if (post != -1 && pre == -1) {
                this->has_incomplete_actions[var.get_id()] = true;
                break;
            }
        }
    }
}

void DynamicMerging::compute_goal_mutexes() {
    VariablesProxy vars = this->task_proxy->get_variables();

    this->is_goal_mutex.clear();
    for (VariableProxy var : vars) {
        this->is_goal_mutex.emplace_back(
            vector<bool>(var.get_domain_size(), false));

        for (int val = 0; val < var.get_domain_size(); ++val) {
            FactProxy fact = var.get_fact(val);

            for (int goal_var_id = 0; goal_var_id < (int)vars.size();
                 ++goal_var_id) {
                if (fact.get_variable().get_id() != goal_var_id &&
                    this->goal_state[goal_var_id] !=
                        numeric_limits<int>::max() &&
                    fact.is_mutex(vars[goal_var_id].get_fact(
                        this->goal_state[goal_var_id]))) {
                    this->is_goal_mutex[var.get_id()][val] = true;
                    break;
                }
            }
        }
    }
}

void DynamicMerging::get_prevails_pres_posts() {
    VariablesProxy vars = this->task_proxy->get_variables();
    OperatorsProxy ops = this->task_proxy->get_operators();

    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        const OperatorProxy &op = ops[op_id];

        vector<int> preconditions(vars.size(), -1);
        for (FactProxy condition : op.get_preconditions()) {
            int var_id = condition.get_variable().get_id();
            preconditions[var_id] = condition.get_value();
        }

        vector<int> postconditions(vars.size(), -1);
        for (EffectProxy effect_proxy : op.get_effects()) {
            FactProxy effect = effect_proxy.get_fact();
            int var_id = effect.get_variable().get_id();
            postconditions[var_id] = effect.get_value();
        }

        vector<int> prevailconditions(vars.size(), -1);
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int pre = preconditions[var_id];
            int post = postconditions[var_id];
            if (pre != -1 && post == -1) {
                prevailconditions[var_id] = pre;
                preconditions[var_id] = -1;
            }
        }

        this->pres.emplace_back(preconditions);
        this->posts.emplace_back(postconditions);
        this->prevails.emplace_back(prevailconditions);
    }
}

void DynamicMerging::dynamic_merging() {
    VariablesProxy vars = this->task_proxy->get_variables();
    OperatorsProxy ops = this->task_proxy->get_operators();

    vector<bool> marked_ops(ops.size(), false);
    for (;;) {
        vector<double> primal = this->solve_lp();

        vector<int> unmarked_ops_with_prevail;
        for (size_t op_id = 0; op_id < primal.size(); ++op_id) {
            if (primal[op_id] > 0 && !marked_ops[op_id]) {
                for (size_t prev_var_id = 0; prev_var_id < vars.size();
                     ++prev_var_id) {
                    if (this->prevails[op_id][prev_var_id] != -1) {
                        unmarked_ops_with_prevail.emplace_back(op_id);
                        break;
                    }
                }
            }
        }

        if (unmarked_ops_with_prevail.size() == 0) {
            // Erase fixed variables and constraints to return only new
            // generated ones
            this->lp_variables.erase(
                this->lp_variables.begin(),
                this->lp_variables.begin() + this->fixed_variables);
            this->lp_constraints.erase(
                this->lp_constraints.begin(),
                this->lp_constraints.begin() + this->fixed_constraints);

            // Update ids_flow_constraints
            transform(this->ids_flow_constraints.begin(),
                      this->ids_flow_constraints.end(),
                      this->ids_flow_constraints.begin(), [&](int ind) {
                          return ind - this->fixed_constraints +
                                 this->lp_constraints_offset;
                      });

            // Post process lp constraints
            vector<lp::LPConstraint> post_lp_constraints;
            for (lp::LPConstraint old_c : this->lp_constraints) {
                lp::LPConstraint new_c(old_c.get_lower_bound(),
                                       old_c.get_upper_bound());
                for (size_t vi = 0; vi < old_c.get_variables().size(); ++vi) {
                    int old_var_id = old_c.get_variables()[vi];
                    int new_var_id = old_var_id;
                    if (old_var_id >= (int)ops.size()) {
                        new_var_id =
                            old_var_id - ops.size() + this->lp_variables_offset;
                    }
                    new_c.insert(new_var_id, old_c.get_coefficients()[vi]);
                }
                post_lp_constraints.emplace_back(new_c);
            }
            this->lp_constraints = post_lp_constraints;

            break;
        }

        for (size_t op_id : unmarked_ops_with_prevail) {
            for (size_t prev_var_id = 0; prev_var_id < vars.size();
                 ++prev_var_id) {
                if (this->prevails[op_id][prev_var_id] != -1) {
                    marked_ops[op_id] = true;
                    for (size_t pre_var_id = 0; pre_var_id < vars.size();
                         ++pre_var_id) {
                        if (this->pres[op_id][pre_var_id] != -1) {
                            int prev_value = this->prevails[op_id][prev_var_id];
                            int pre_value = this->pres[op_id][pre_var_id];
                            tuple<int, int, int, int> merge = make_tuple(
                                prev_var_id, prev_value, pre_var_id, pre_value);

                            if (this->merges_set.count(merge) > 0) {
                                continue;
                            }

                            this->merges_set.insert(merge);
                            this->merges.emplace_back(merge);
                        }
                    }
                }
            }
        }

        this->lp_variables.erase(
            this->lp_variables.begin() + this->fixed_variables,
            this->lp_variables.end());
        this->lp_constraints.erase(
            this->lp_constraints.begin() + this->fixed_constraints,
            this->lp_constraints.end());
        this->ids_flow_constraints.clear();
        this->copies = vector<vector<vector<int>>>(
            this->merges.size(), vector<vector<int>>(ops.size()));
        this->consumers = vector<vector<int>>(this->merges.size());
        this->producers = vector<vector<int>>(this->merges.size());
        this->potential_consumers = vector<vector<int>>(this->merges.size());
        this->potential_producers = vector<vector<int>>(this->merges.size());
        this->ids_flow_constraints = vector<int>(this->merges.size());

        this->explicate_merges();
        this->create_link_constraints();
        this->create_flow_constraints();
    }
}

vector<double> DynamicMerging::solve_lp() {
    // Load variables and constraints in LP
    lp::LPSolver lp_solver(this->lp_solver_type);
    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, this->lp_variables,
                           this->lp_constraints);

    // Update initial constraints from constraint generators in LP
    // for (const auto &generator : this->constraint_generators) {
    //    generator->update_constraints(this->task_proxy->get_initial_state(),
    //    lp_solver);
    //}
    this->update_seq_constraints(this->task_proxy->get_initial_state(),
                                 lp_solver);

    // Solve LP
    lp_solver.solve();

    // Extract optimal solution
    vector<double> primal;
    if (lp_solver.has_optimal_solution()) {
        primal = lp_solver.extract_solution();
        primal.resize(this->task_proxy->get_operators().size());
    }

    return primal;
}

void DynamicMerging::explicate_merges() {
    OperatorsProxy ops = this->task_proxy->get_operators();

    for (size_t merge_id = 0; merge_id < this->merges.size(); ++merge_id) {
        int var1, val1, var2, val2;
        tie(var1, val1, var2, val2) = this->merges[merge_id];

        vector<int> dtg_var1, dtg_var2;
        dtg_var1 = this->create_dtg(var1, val1, var2, val2);
        dtg_var2 = this->create_dtg(var2, val2, var1, val1);

        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            int v1 = dtg_var1[op_id];
            int v2 = dtg_var2[op_id];

            // Producer
            if ((v1 == 1 && v2 != numeric_limits<int>::max()) ||
                (v2 == 1 && v1 != numeric_limits<int>::max())) {
                this->producers[merge_id].emplace_back(op_id);
                // Consumer
            } else if ((v1 == -1 && v2 != numeric_limits<int>::max()) ||
                       (v2 == -1 && v1 != numeric_limits<int>::max())) {
                this->consumers[merge_id].emplace_back(op_id);
                // Potential producer
            } else if ((v1 == 1 && v2 == numeric_limits<int>::max()) ||
                       (v2 == 1 && v1 == numeric_limits<int>::max())) {
                // Creating copy of op
                int op_copy_id = this->lp_variables.size();
                this->copies[merge_id][op_id].emplace_back(op_copy_id);
                this->potential_producers[merge_id].emplace_back(op_copy_id);
                this->lp_variables.emplace_back(
                    lp::LPVariable(0, this->infinity, 0));
                // Potential consumer
            } else if ((v1 == -1 && v2 == numeric_limits<int>::max()) ||
                       (v2 == -1 && v1 == numeric_limits<int>::max())) {
                // Creating copy of op
                int op_copy_id = this->lp_variables.size();
                this->copies[merge_id][op_id].emplace_back(op_copy_id);
                this->potential_consumers[merge_id].emplace_back(op_copy_id);
                this->lp_variables.emplace_back(
                    lp::LPVariable(0, this->infinity, 0));
            }
        }
    }
}

vector<int> DynamicMerging::create_dtg(int var_id, int var_val, int ovar_id,
                                       int ovar_val) {
    OperatorsProxy ops = this->task_proxy->get_operators();

    vector<int> dtg(ops.size(), numeric_limits<int>::max());

    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        vector<int> &pre = this->pres[op_id];
        vector<int> &post = this->posts[op_id];
        vector<int> &prev = this->prevails[op_id];

        // (x, a, x'): X = x in Pre, X = x' in Post
        // Consumer
        if (pre[var_id] == var_val && post[var_id] != var_val &&
            post[var_id] != -1 &&
            (prev[ovar_id] == -1 || prev[ovar_id] == ovar_val)) {
            dtg[op_id] = -1;
            // (x', a, x): X = x' in Pre, X = x in Post
            // (_, a, x): X notin Var(pre), X = x in Post
            // Producer
        } else if (pre[var_id] != var_val && post[var_id] == var_val &&
                   (prev[ovar_id] == -1 || prev[ovar_id] == ovar_val)) {
            dtg[op_id] = +1;
            // (x, a, x): X = x in Prev
            // Preserver
        } else if (prev[var_id] == var_val) {
            dtg[op_id] = 0;
        }
    }

    return dtg;
}

void DynamicMerging::create_link_constraints() {
    OperatorsProxy ops = this->task_proxy->get_operators();

    for (size_t merge_id = 0; merge_id < this->merges.size(); ++merge_id) {
        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            vector<int> &copies_op = this->copies[merge_id][op_id];
            if (copies_op.size() > 0) {
                lp::LPConstraint link_constraint(0, this->infinity);
                link_constraint.insert(op_id, 1.0);
                for (int &op_copy_id : copies_op) {
                    link_constraint.insert(op_copy_id, -1.0);
                }
                this->lp_constraints.emplace_back(link_constraint);
            }
        }
    }
}

void DynamicMerging::create_flow_constraints() {
    for (size_t merge_id = 0; merge_id < this->merges.size(); ++merge_id) {
        int var1, val1, var2, val2;
        tie(var1, val1, var2, val2) = this->merges[merge_id];

        double lower_bound = 0;
        if (this->initial_state[var1] == val1 &&
            this->initial_state[var2] == val2) {
            --lower_bound;
        }
        if (this->goal_state[var1] == val1 && this->goal_state[var2] == val2) {
            ++lower_bound;
        }

        double upper_bound = infinity;
        /*
        if (!this->has_incomplete_actions[var1] &&
            !this->has_incomplete_actions[var2]) {
            upper_bound = 0;
            if (this->initial_state[var1] != val1 ||
                this->initial_state[var2] != val2) {
                ++upper_bound;
            }
            if (this->is_goal_mutex[var1][val1] ||
                this->is_goal_mutex[var2][val2]) {
                --upper_bound;
            }
        }
        */

        lp::LPConstraint flow_constraint(lower_bound, upper_bound);

        for (int &producer_id : this->producers[merge_id]) {
            flow_constraint.insert(producer_id, 1.0);
        }
        for (int &potential_producer_id : this->potential_producers[merge_id]) {
            flow_constraint.insert(potential_producer_id, 1.0);
        }
        for (int &consumer_id : this->consumers[merge_id]) {
            flow_constraint.insert(consumer_id, -1.0);
        }
        for (int &potential_consumer_id : this->potential_consumers[merge_id]) {
            flow_constraint.insert(potential_consumer_id, -1.0);
        }

        this->ids_flow_constraints[merge_id] = this->lp_constraints.size();
        this->lp_constraints.emplace_back(flow_constraint);
    }
}

vector<lp::LPConstraint> DynamicMerging::get_lp_constraints() {
    return this->lp_constraints;
}
vector<lp::LPVariable> DynamicMerging::get_lp_variables() {
    return this->lp_variables;
}

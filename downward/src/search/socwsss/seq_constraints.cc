#include "seq_constraints.h"

void add_indices_to_constraint(lp::LPConstraint &constraint,
                               const set<int> &indices, double coefficient) {
    for (int index : indices) {
        constraint.insert(index, coefficient);
    }
}

void SEQConstraints::build_propositions(const TaskProxy &task_proxy) {
    VariablesProxy vars = task_proxy.get_variables();
    propositions.reserve(vars.size());
    for (VariableProxy var : vars) {
        propositions.push_back(vector<Prop>(var.get_domain_size()));
    }
    is_safe.resize(vars.size(), false);
    for (FactProxy goal : task_proxy.get_goals()) {
        is_safe[goal.get_variable().get_id()] = true;
    }
    OperatorsProxy ops = task_proxy.get_operators();
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
                    propositions[var][post].always_produced_by.insert(op_id);
                    propositions[var][pre].always_consumed_by.insert(op_id);
                }
            } else {
                propositions[var][post].sometimes_produced_by.insert(op_id);
                is_safe[var] = false;
                for (int other_value = 0;
                     other_value < effect.get_variable().get_domain_size();
                     ++other_value) {
                    if (other_value != post) {
                        propositions[var][other_value]
                            .sometimes_consumed_by.insert(op_id);
                    }
                }
            }
        }
    }
}

void SEQConstraints::add_constraints(vector<lp::LPConstraint> &constraints,
                                     double infinity) {
    for (vector<Prop> &var_propositions : propositions) {
        for (Prop &prop : var_propositions) {
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
                prop.constraint_index = constraints.size();
                constraints.push_back(constraint);
            }
        }
    }
}

SEQConstraints::SEQConstraints(bool use_safety_improvement,
                               bool use_only_upper_bounds)
    : use_safety_improvement(use_safety_improvement),
      use_only_upper_bounds(use_only_upper_bounds) {}

void SEQConstraints::operator()(const shared_ptr<AbstractTask> &task,
                                vector<lp::LPConstraint> &constraints,
                                double infinity, const State &state) {
    TaskProxy task_proxy(*task);
    task_properties::verify_no_axioms(task_proxy);
    task_properties::verify_no_conditional_effects(task_proxy);
    build_propositions(task_proxy);
    add_constraints(constraints, infinity);

    // Initialize goal state.
    VariablesProxy variables = task_proxy.get_variables();
    goal_state = vector<int>(variables.size(), numeric_limits<int>::max());
    for (FactProxy goal : task_proxy.get_goals()) {
        goal_state[goal.get_variable().get_id()] = goal.get_value();
    }

    // Compute the bounds for the rows in the LP.
    for (size_t var = 0; var < propositions.size(); ++var) {
        int num_values = propositions[var].size();
        for (int value = 0; value < num_values; ++value) {
            const Prop &prop = propositions[var][value];
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
                    constraints[prop.constraint_index].set_lower_bound(
                        lower_bound);
                    constraints[prop.constraint_index].set_upper_bound(
                        upper_bound);
                } else if (use_only_upper_bounds) {
                    int upper_bound = lower_bound;
                    if (goal_state[var] == numeric_limits<int>::max()) {
                        ++upper_bound;
                    }
                    constraints[prop.constraint_index].set_upper_bound(
                        upper_bound);
                } else {
                    constraints[prop.constraint_index].set_lower_bound(
                        lower_bound);
                }
            }
        }
    }
}

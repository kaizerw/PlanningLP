#include "flow_constraint_internals.h"

FlowConstraintInternals::FlowConstraintInternals(
    const AbstractTask &task, vector<lp::LPVariable> &variables,
    vector<lp::LPConstraint> &constraints, double infinity,
    const FlowConstraintSettings &settings)
    : initial_state_is_dead_end(false),
      single_goal_state(-1),
      abstraction_function(nullptr) {
    TaskProxy task_proxy(task);
    auto abstraction_and_ts =
        pdbs::project_task(task, settings.pattern, settings.remove_dead_states,
                           settings.use_mutexes, settings.partial_merge_states);
    abstraction_function = utils::make_unique_ptr<pdbs::AbstractionFunction>(
        move(abstraction_and_ts.first));
    const pdbs::AbstractTransitionSystem &transition_system =
        abstraction_and_ts.second;
    num_abstract_states = transition_system.num_states;

    if (transition_system.goal_states.empty()) {
        initial_state_is_dead_end = true;
    } else {
        create_constraints(variables, constraints, infinity, transition_system,
                           task_proxy, settings);
    }
}

vector<OperatorCategory> FlowConstraintInternals::get_operator_categories(
    const pdbs::AbstractTransitionSystem &transition_system,
    const TaskProxy &task_proxy, const FlowConstraintSettings &settings) {
    int num_operators = task_proxy.get_operators().size();
    vector<OperatorCategory> operator_category(
        num_operators, OperatorCategory::USE_STRONG_LINKING_CONSTRAINT);

    vector<int> num_self_loops(num_operators, 0);
    for (pdbs::Transition t : transition_system.self_loops) {
        num_self_loops[t.op_id] += 1;
    }
    for (int op_id : transition_system.self_loops_on_all_states) {
        num_self_loops[op_id] += transition_system.num_states;
    }

    vector<int> num_state_changing_transitions(num_operators, 0);
    for (pdbs::Transition t : transition_system.state_changing_transitions) {
        num_state_changing_transitions[t.op_id] += 1;
    }

    for (int op_id = 0; op_id < num_operators; ++op_id) {
        int num_sct = num_state_changing_transitions[op_id];
        int num_loops = num_self_loops[op_id];

        if (settings.single_transition_optimization && num_sct == 1 &&
            num_loops == 0) {
            operator_category[op_id] = OperatorCategory::USE_OP_COUNT_DIRECTLY;
        }

        if (settings.self_loop_optimization && num_sct == 0 && num_loops > 0) {
            operator_category[op_id] = OperatorCategory::IGNORE_OPERATOR;
        }

        if (settings.weak_linking_constraints && num_sct > 0 && num_loops > 0) {
            operator_category[op_id] =
                OperatorCategory::USE_WEAK_LINKING_CONSTRAINT;
        }
    }

    return operator_category;
}

void FlowConstraintInternals::create_constraints(
    vector<lp::LPVariable> &variables, vector<lp::LPConstraint> &constraints,
    double infinity, const pdbs::AbstractTransitionSystem &transition_system,
    const TaskProxy &task_proxy, const FlowConstraintSettings &settings) {
    int num_operators = task_proxy.get_operators().size();
    vector<OperatorCategory> operator_category =
        get_operator_categories(transition_system, task_proxy, settings);

    /*
      Create constraints of the type
           sum_{t \in in(s)} Count_t - sum_{t \in out(s)} Count_t >= -[s is
      init]     if s is an abstract goal sum_{t \in in(s)} Count_t - sum_{t \in
      out(s)} Count_t  = -[s is init]     otherwise for all abstract states s.
      While doing this, we use operator_category to
        - replace some Count_t (transition-counting variable) by Count_o
      (operator-counting variable),
        - ignore other Count_t variables, and
        - introduce Count_t variables where necessary.

      Where necessary, we also create a linking constraint (weak or strong,
      depending on operator_category). sum_{t \in trans(o)} Count_t = Count_o
      (strong) sum_{t \in trans(o), t is no self loop} Count_t <= Count_o (weak)
    */

    state_constraint_offset = constraints.size();
    for (int state = 0; state < transition_system.num_states; ++state) {
        // Handle initial and goal states later.
        constraints.emplace_back(0, 0);
    }
    // Set some state as current, so we don't need a special case for "no
    // current state".
    int intitial_id = state_constraint_offset + transition_system.initial_state;
    current_state = transition_system.initial_state;
    constraints[intitial_id].set_lower_bound(-1);
    constraints[intitial_id].set_upper_bound(-1);

    // Special case for single goal state for comparability to SEQ on TNF tasks
    if (transition_system.goal_states.size() == 1) {
        single_goal_state = transition_system.goal_states[0];
        int goal_id = state_constraint_offset + single_goal_state;
        int bound = constraints[goal_id].get_lower_bound() + 1;
        constraints[goal_id].set_lower_bound(bound);
        constraints[goal_id].set_upper_bound(bound);
    } else {
        assert(is_goal.empty());
        is_goal.resize(transition_system.num_states, false);
        for (int goal : transition_system.goal_states) {
            is_goal[goal] = true;
            int goal_id = state_constraint_offset + goal;
            constraints[goal_id].set_upper_bound(infinity);
        }
    }

    vector<vector<int>> linking_constraint_entries(num_operators);
    for (pdbs::Transition t : transition_system.state_changing_transitions) {
        int op_id = t.op_id;
        OperatorCategory category = operator_category[op_id];
        if (category == OperatorCategory::IGNORE_OPERATOR) {
            continue;
        }
        int lp_var;
        if (category == OperatorCategory::USE_OP_COUNT_DIRECTLY) {
            lp_var = op_id;
        } else {
            // Create transition-counting variable
            lp_var = variables.size();
            variables.emplace_back(0, infinity, 0);
            linking_constraint_entries[op_id].push_back(lp_var);
        }

        /* The lp variable occurs with coefficient -1 in the constraint
           of its source state because it is an outgoing transition. */
        int source_constraint_id = state_constraint_offset + t.source;
        constraints[source_constraint_id].insert(lp_var, -1);

        /* The lp variable occurs with coefficient +1 in the constraint
           of its target state because it is an incoming transition. */
        int target_constraint_id = state_constraint_offset + t.target;
        constraints[target_constraint_id].insert(lp_var, 1);
    }
    for (pdbs::Transition t : transition_system.self_loops) {
        // Self-loops cancel out in all constraints except in the strong linking
        // constraint.
        int op_id = t.op_id;
        OperatorCategory category = operator_category[op_id];
        if (category == OperatorCategory::USE_STRONG_LINKING_CONSTRAINT) {
            // Create transition-counting variable
            int lp_var = variables.size();
            variables.emplace_back(0, infinity, 0);
            linking_constraint_entries[op_id].push_back(lp_var);
        }
    }
    for (int op_id : transition_system.self_loops_on_all_states) {
        // Self-loops cancel out in all constraints except in the strong linking
        // constraint.
        OperatorCategory category = operator_category[op_id];
        if (category == OperatorCategory::USE_STRONG_LINKING_CONSTRAINT) {
            // Create transition-counting variable
            int lp_var = variables.size();
            variables.emplace_back(0, infinity, 0);
            linking_constraint_entries[op_id].push_back(lp_var);
        }
    }

    // Create linking constraints.
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        OperatorCategory category = operator_category[op_id];
        if (category != OperatorCategory::USE_STRONG_LINKING_CONSTRAINT &&
            category != OperatorCategory::USE_WEAK_LINKING_CONSTRAINT) {
            continue;
        }
        if (linking_constraint_entries[op_id].empty()) {
            // Handle constraints without entries in variable bounds.
            if (category == OperatorCategory::USE_STRONG_LINKING_CONSTRAINT) {
                variables[op_id].upper_bound = 0;
            }
            // No need to handle a weak linking constraint without entries (C_o
            // >= 0).
        } else {
            constraints.emplace_back(0, 0);
            lp::LPConstraint &linking_constraint = constraints.back();
            if (category == OperatorCategory::USE_WEAK_LINKING_CONSTRAINT) {
                linking_constraint.set_lower_bound(-infinity);
            }
            linking_constraint.insert(op_id, -1);
            for (int entry : linking_constraint_entries[op_id]) {
                linking_constraint.insert(entry, 1);
            }
        }
    }
}

bool FlowConstraintInternals::update_constraints(
    const State &state, vector<lp::LPConstraint> &constraints) {
    if (initial_state_is_dead_end) {
        return true;
    }
    int current_id = state_constraint_offset + current_state;
    int next_state = abstraction_function->get_abstract_state(state);
    int next_id = state_constraint_offset + next_state;

    if (next_state == -1) {
        /* This state was pruned from the transition system as a dead state.
           If it is reachable, it is a dead end. */
        return true;
    }

    if (current_id != next_id) {
        if (single_goal_state > -1) {
            // Special case for SEQ comparability on TNF tasks
            int old_bound = 0;
            if (current_state == single_goal_state) {
                old_bound = 1;
            }
            constraints[current_id].set_lower_bound(old_bound);
            constraints[current_id].set_upper_bound(old_bound);

            int new_bound = -1;
            if (next_state == single_goal_state) {
                new_bound = 0;
            }
            constraints[next_id].set_lower_bound(new_bound);
            constraints[next_id].set_upper_bound(new_bound);
        } else {
            if (is_goal[current_state]) {
                constraints[current_id].set_lower_bound(0);
            } else {
                constraints[current_id].set_lower_bound(0);
                constraints[current_id].set_upper_bound(0);
            }

            if (is_goal[next_state]) {
                constraints[next_id].set_lower_bound(-1);
            } else {
                constraints[next_id].set_lower_bound(-1);
                constraints[next_id].set_upper_bound(-1);
            }
        }
        current_state = next_state;
    }
    return false;
}

#include "flow_constraints.h"

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

bool detect_unrepresented_features(const vector<lp::LPVariable> &variables,
                                   const vector<lp::LPConstraint> &constraints,
                                   const TaskProxy &task_proxy,
                                   double lp_solve_time_limit,
                                   const utils::CountdownTimer &remaining_time,
                                   vector<bool> &operator_handled,
                                   int feature_size,
                                   vector<vector<FactPair>> &required_features,
                                   bool &found_operator_above_feature_size) {
    // HACK: hard-coded CPLEX for now.
    lp::LPSolver lp_solver(lp::LPSolverType::CPLEX);
    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, variables,
                           constraints);
    utils::Timer lp_solve_timer;
    lp_solver.solve();
    vector<double> solution = lp_solver.extract_solution();
    if (lp_solve_timer() > lp_solve_time_limit) {
        cout << "Solving the LP took " << lp_solve_timer
             << " which exceeds the time limit of " << lp_solve_time_limit
             << "s. Stopping feature detection." << endl;
        return false;
    }

    double EPSILON = 0.001;
    OperatorsProxy operators = task_proxy.get_operators();
    VariablesProxy vars = task_proxy.get_variables();
    int num_variables = vars.size();
    assert(solution.size() >= operators.size());
    bool added_feature = false;
    for (OperatorProxy op : operators) {
        if (remaining_time.is_expired()) {
            cout << "Time limit for partial merges exceeded." << endl;
            return false;
        }

        if (solution[op.get_id()] > EPSILON && !operator_handled[op.get_id()]) {
            operator_handled[op.get_id()] = true;
            vector<int> effect_on_var(num_variables, -1);
            for (EffectProxy effect : op.get_effects()) {
                int var = effect.get_fact().get_variable().get_id();
                effect_on_var[var] = effect.get_fact().get_value();
            }
            vector<FactPair> prevail_conditions;
            vector<FactPair> real_preconditions;
            vector<FactPair> all_preconditions;
            for (FactProxy precondition : op.get_preconditions()) {
                int var = precondition.get_variable().get_id();
                int pre = precondition.get_value();
                int post = effect_on_var[var];
                if (post == -1 || post == pre) {
                    prevail_conditions.emplace_back(var, pre);
                    all_preconditions.emplace_back(var, pre);
                } else {
                    real_preconditions.emplace_back(var, pre);
                    all_preconditions.emplace_back(var, pre);
                }
            }

            int num_preconditions = all_preconditions.size();
            if (num_preconditions > feature_size &&
                !prevail_conditions.empty()) {
                found_operator_above_feature_size = true;
            }
            for (FactPair prevail : prevail_conditions) {
                for (FactPair pre : real_preconditions) {
                    int num_extra_features =
                        min(feature_size - 2, num_preconditions - 2);
                    Combinations<FactPair> combos;

                    for (vector<FactPair> feature : combos.get_combinations(
                             all_preconditions, num_extra_features)) {
                        // HACK: could remove both from all_preconditions
                        // before, but meh.
                        bool useful_feature = true;
                        for (FactPair f : feature) {
                            if (f == prevail || f == pre) {
                                useful_feature = false;
                                break;
                            }
                        }
                        if (!useful_feature) {
                            continue;
                        }

                        feature.push_back(prevail);
                        feature.push_back(pre);
                        sort(feature.begin(), feature.end());
                        required_features.push_back(feature);
                        added_feature = true;
                    }
                }
            }
        }
    }
    return added_feature;
}

struct HashPattern {
    size_t operator()(const pdbs::Pattern &v) const {
        size_t key = v.size();
        for (auto &i : v) {
            key ^= i + 0x9e3779b9 + (key << 6) + (key >> 2);
        }
        return key;
    }
};

void FlorianFlowConstraints::add_partial_merge_features(
    const AbstractTask &task, vector<lp::LPVariable> &variables,
    vector<lp::LPConstraint> &constraints, double infinity) {
    utils::Timer partial_merge_timer;
    utils::CountdownTimer partial_merge_remaining_time(
        partial_merge_time_limit);
    TaskProxy task_proxy(task);

    int num_base_variables = variables.size();
    int num_base_constraints = constraints.size();
    int num_base_sub_constraints = sub_constraints.size();

    int num_iterations = 0;
    int num_added_features = 0;
    int feature_size = 2;

    unordered_map<pdbs::Pattern, vector<vector<int>>, HashPattern>
        represented_features;
    vector<vector<FactPair>> required_features;

    while (feature_size <= max_merge_feature_size &&
           !partial_merge_remaining_time.is_expired()) {
        cout << "Partially merging features of size " << feature_size << endl;
        vector<bool> operator_handled(task_proxy.get_operators().size(), false);

        bool found_operator_above_feature_size = false;
        while (detect_unrepresented_features(
            variables, constraints, task_proxy, lp_solve_time_limit,
            partial_merge_remaining_time, operator_handled, feature_size,
            required_features, found_operator_above_feature_size)) {
            ++num_iterations;
            for (const vector<FactPair> &feature : required_features) {
                pdbs::Pattern pattern;
                vector<int> state;
                for (FactPair fact : feature) {
                    pattern.push_back(fact.var);
                    state.push_back(fact.value);
                }
                vector<vector<int>> &represented_pattern_features =
                    represented_features[pattern];
                if (find(represented_pattern_features.begin(),
                         represented_pattern_features.end(),
                         state) == represented_pattern_features.end()) {
                    represented_pattern_features.push_back(state);
                    ++num_added_features;
                }
            }
            required_features.clear();

            variables.erase(variables.begin() + num_base_variables,
                            variables.end());
            constraints.erase(constraints.begin() + num_base_constraints,
                              constraints.end());
            sub_constraints.erase(
                sub_constraints.begin() + num_base_sub_constraints,
                sub_constraints.end());

            for (const auto &entry : represented_features) {
                if (partial_merge_remaining_time.is_expired()) {
                    break;
                }
                const pdbs::Pattern &pattern = entry.first;
                const vector<vector<int>> &states = entry.second;
                FlowConstraintSettings settings;
                settings.pattern = pattern;
                settings.remove_dead_states = remove_dead_states;
                settings.single_transition_optimization =
                    single_transition_optimization;
                settings.self_loop_optimization = self_loop_optimization;
                settings.weak_linking_constraints = weak_linking_constraints;
                settings.use_mutexes = use_mutexes;
                settings.partial_merge_states = states;
                sub_constraints.emplace_back(task, variables, constraints,
                                             infinity, settings);
            }
        }
        if (!found_operator_above_feature_size ||
            partial_merge_remaining_time.is_expired()) {
            break;
        }
        ++feature_size;
    }

    cout << "Flow constraints partial merge iterations: " << num_iterations
         << endl;
    cout << "Flow constraints partial merge added features: "
         << num_added_features << endl;
    cout << "Flow constraints partial merge time: " << partial_merge_timer
         << endl;
}

FlorianFlowConstraints::FlorianFlowConstraints(
    const shared_ptr<AbstractTask> task, int lp_variables_offset,
    double infinity, const State &state, bool remove_dead_states,
    bool single_transition_optimization, bool self_loop_optimization,
    bool weak_linking_constraints, bool use_mutexes, bool partial_merges,
    int max_merge_feature_size, double partial_merge_time_limit,
    double merge_lp_solve_time_limit)
    : remove_dead_states(remove_dead_states),
      single_transition_optimization(single_transition_optimization),
      self_loop_optimization(self_loop_optimization),
      weak_linking_constraints(weak_linking_constraints),
      use_mutexes(use_mutexes),
      partial_merges(partial_merges),
      max_merge_feature_size(max_merge_feature_size),
      partial_merge_time_limit(partial_merge_time_limit),
      lp_solve_time_limit(merge_lp_solve_time_limit) {
    Options opts_sys;
    opts_sys.set("pattern_max_size", 1);
    opts_sys.set("only_interesting_patterns", true);
    pattern_generator = static_pointer_cast<PatternCollectionGenerator>(
        make_shared<PatternCollectionGeneratorSystematic>(opts_sys));

    assert(pattern_generator);
    pdbs::PatternCollectionInformation pattern_collection_info =
        pattern_generator->generate(task);
    shared_ptr<pdbs::PatternCollection> patterns =
        pattern_collection_info.get_patterns();
    pattern_generator = nullptr;

    int num_maximal_abstract_states = 0;
    int num_actual_abstract_states = 0;
    TaskProxy task_proxy(*task);
    VariablesProxy vars = task_proxy.get_variables();
    OperatorsProxy ops = task_proxy.get_operators();

    // Initialize local variables and constraints
    vector<lp::LPVariable> local_variables;
    vector<lp::LPConstraint> local_constraints;
    for (OperatorProxy op : ops) {
        local_variables.emplace_back(0, infinity, op.get_cost());
    }

    utils::Timer constraint_generation_timer;

    sub_constraints.reserve(patterns->size());
    for (const pdbs::Pattern &pattern : *patterns) {
        FlowConstraintSettings settings;
        settings.pattern = pattern;
        settings.remove_dead_states = remove_dead_states;
        settings.single_transition_optimization =
            single_transition_optimization;
        settings.self_loop_optimization = self_loop_optimization;
        settings.weak_linking_constraints = weak_linking_constraints;
        settings.use_mutexes = use_mutexes;
        sub_constraints.emplace_back(*task, local_variables, local_constraints,
                                     infinity, settings);

        int num_abstract_states = 1;
        for (int v : pattern) {
            num_abstract_states *= vars[v].get_domain_size();
        }
        num_maximal_abstract_states += num_abstract_states;
        num_actual_abstract_states +=
            sub_constraints.back().get_num_abstract_states();
    }

    if (partial_merges) {
        add_partial_merge_features(*task, local_variables, local_constraints,
                                   infinity);
    }

    cout << "Flow constraints abstract states for original patterns: "
         << num_maximal_abstract_states << endl;
    cout << "Flow constraints actual abstract states: "
         << num_actual_abstract_states << endl;
    cout << "Flow constraints removed abstract states: "
         << num_maximal_abstract_states - num_actual_abstract_states << endl;
    cout << "Flow constraints generation time: " << constraint_generation_timer
         << endl;

    for (FlowConstraintInternals &constraint : sub_constraints) {
        constraint.update_constraints(state, local_constraints);
    }

    // Erase base operator counting variables
    local_variables.erase(local_variables.begin(),
                          local_variables.begin() + ops.size());
    lp_variables = local_variables;

    // Update new variables ids for new constraints
    for (lp::LPConstraint old_c : local_constraints) {
        if (old_c.get_variables().size() == 0) {
            continue;
        }

        lp::LPConstraint new_c(old_c.get_lower_bound(),
                               old_c.get_upper_bound());
        for (size_t vi = 0; vi < old_c.get_variables().size(); ++vi) {
            int old_var_id = old_c.get_variables()[vi];
            int old_coeff = old_c.get_coefficients()[vi];
            int new_var_id = old_var_id;
            if (old_var_id >= (int)ops.size()) {
                new_var_id = old_var_id - ops.size() + lp_variables_offset;
            }
            new_c.insert(new_var_id, old_coeff);
        }
        lp_constraints.emplace_back(new_c);
    }
}

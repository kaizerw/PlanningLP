#include "flow_constraints.h"

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

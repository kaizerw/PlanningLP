#include "flow_constraints.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../lp/lp_solver.h"
#include "../utils/logging.h"
#include "../utils/timer.h"
#include "../utils/countdown_timer.h"
#include "../algorithms/combinations.h"

#include <unordered_map>

using namespace std;

namespace operator_counting {

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
    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, variables, constraints);
    utils::Timer lp_solve_timer;
    lp_solver.solve();
    vector<double> solution = lp_solver.extract_solution();
    if (lp_solve_timer() > lp_solve_time_limit) {
        cout << "Solving the LP took " << lp_solve_timer << " which exceeds the time limit of "
             << lp_solve_time_limit << "s. Stopping feature detection."<< endl;
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
            cout << "Time limit for partial merges exceeded."<< endl;
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
            if (num_preconditions > feature_size && !prevail_conditions.empty()) {
                found_operator_above_feature_size = true;
            }
            for (FactPair prevail : prevail_conditions) {
                for (FactPair pre : real_preconditions) {
                    int num_extra_features = min(feature_size - 2, num_preconditions - 2);
                    Combinations<FactPair> combos;

                    for (vector<FactPair> feature : combos.get_combinations(all_preconditions, num_extra_features)) {
                        // HACK: could remove both from all_preconditions before, but meh.
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



FlowConstraints::FlowConstraints(const options::Options &opts)
    : pattern_generator(opts.get<shared_ptr<pdbs::PatternCollectionGenerator>>("patterns")),
      remove_dead_states(opts.get<bool>("remove_dead_states")),
      single_transition_optimization(opts.get<bool>("single_transition_optimization")),
      self_loop_optimization(opts.get<bool>("self_loop_optimization")),
      weak_linking_constraints(opts.get<bool>("weak_linking_constraints")),
      use_mutexes(opts.get<bool>("use_mutexes")),
      partial_merges(opts.get<bool>("partial_merges")),
      max_merge_feature_size(opts.get<int>("max_merge_feature_size")),
      partial_merge_time_limit(opts.get<double>("partial_merge_time_limit")),
      lp_solve_time_limit(opts.get<double>("merge_lp_solve_time_limit")){
}

void FlowConstraints::initialize_constraints(
    const shared_ptr<AbstractTask> task,
    vector<lp::LPVariable> &variables,
    vector<lp::LPConstraint> &constraints,
    double infinity) {
    assert(pattern_generator);
    pdbs::PatternCollectionInformation pattern_collection_info =
        pattern_generator->generate(task);
    shared_ptr<pdbs::PatternCollection> patterns = pattern_collection_info.get_patterns();
    pattern_generator = nullptr;

    int num_maximal_abstract_states = 0;
    int num_actual_abstract_states = 0;
    TaskProxy task_proxy(*task);
    VariablesProxy vars = task_proxy.get_variables();

    utils::Timer constraint_generation_timer;

    sub_constraints.reserve(patterns->size());
    for (const pdbs::Pattern &pattern : *patterns) {
        FlowConstraintSettings settings;
        settings.pattern = pattern;
        settings.remove_dead_states = remove_dead_states;
        settings.single_transition_optimization = single_transition_optimization;
        settings.self_loop_optimization = self_loop_optimization;
        settings.weak_linking_constraints = weak_linking_constraints;
        settings.use_mutexes = use_mutexes;
        sub_constraints.emplace_back(*task, variables, constraints, infinity, settings);


        int num_abstract_states = 1;
        for (int v : pattern) {
            num_abstract_states *= vars[v].get_domain_size();
        }
        num_maximal_abstract_states += num_abstract_states;
        num_actual_abstract_states += sub_constraints.back().get_num_abstract_states();
    }


    if (partial_merges) {
        add_partial_merge_features(*task, variables, constraints, infinity);
    }

    cout << "Flow constraints abstract states for original patterns: " << num_maximal_abstract_states << endl;
    cout << "Flow constraints actual abstract states: " << num_actual_abstract_states << endl;
    cout << "Flow constraints removed abstract states: " << num_maximal_abstract_states - num_actual_abstract_states << endl;
    cout << "Flow constraints generation time: " << constraint_generation_timer << endl;
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

void FlowConstraints::add_partial_merge_features(
    const AbstractTask &task,
    vector<lp::LPVariable> &variables,
    vector<lp::LPConstraint> &constraints,
    double infinity) {
    utils::Timer partial_merge_timer;
    utils::CountdownTimer partial_merge_remaining_time(partial_merge_time_limit);
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

    while (feature_size <= max_merge_feature_size && !partial_merge_remaining_time.is_expired()) {
        cout << "Partially merging features of size " << feature_size << endl;
        vector<bool> operator_handled(task_proxy.get_operators().size(), false);

        bool found_operator_above_feature_size = false;
        while (detect_unrepresented_features(variables, constraints, task_proxy, lp_solve_time_limit,
                                             partial_merge_remaining_time,
                                             operator_handled, feature_size, required_features,
                                             found_operator_above_feature_size)) {
            ++num_iterations;
            for (const vector<FactPair> &feature : required_features) {
                pdbs::Pattern pattern;
                vector<int> state;
                for (FactPair fact : feature) {
                    pattern.push_back(fact.var);
                    state.push_back(fact.value);
                }
                vector<vector<int>> &represented_pattern_features = represented_features[pattern];
                if (find(represented_pattern_features.begin(), represented_pattern_features.end(), state) == represented_pattern_features.end()) {
                    represented_pattern_features.push_back(state);
                    ++num_added_features;
                }
            }
            required_features.clear();

            variables.erase(variables.begin() + num_base_variables, variables.end());
            constraints.erase(constraints.begin() + num_base_constraints, constraints.end());
            sub_constraints.erase(sub_constraints.begin() + num_base_sub_constraints, sub_constraints.end());

            for (const auto &entry : represented_features) {
                if (partial_merge_remaining_time.is_expired()) {
                    break;
                }
                const pdbs::Pattern &pattern = entry.first;
                const vector<vector<int>> &states = entry.second;
                FlowConstraintSettings settings;
                settings.pattern = pattern;
                settings.remove_dead_states = remove_dead_states;
                settings.single_transition_optimization = single_transition_optimization;
                settings.self_loop_optimization = self_loop_optimization;
                settings.weak_linking_constraints = weak_linking_constraints;
                settings.use_mutexes = use_mutexes;
                settings.partial_merge_states = states;
                sub_constraints.emplace_back(task, variables, constraints, infinity, settings);
            }
        }
        if (!found_operator_above_feature_size || partial_merge_remaining_time.is_expired()) {
            break;
        }
        ++feature_size;
    }

    cout << "Flow constraints partial merge iterations: " << num_iterations << endl;
    cout << "Flow constraints partial merge added features: " << num_added_features << endl;
    cout << "Flow constraints partial merge time: " << partial_merge_timer << endl;
}

bool FlowConstraints::update_constraints(
    const State &state, lp::LPSolver &lp_solver,
        shared_ptr<vector<long>> /*state_op_count*/) {
    for (FlowConstraintInternals &constraint : sub_constraints) {
        if (constraint.update_constraints(state, lp_solver)) {
            return true;
        }
    }
    return false;
}

static shared_ptr<ConstraintGenerator> _parse(OptionParser &parser) {
    parser.add_option<shared_ptr<pdbs::PatternCollectionGenerator>>(
        "patterns",
        "pattern generation method",
        "systematic(1)");

    parser.add_option<bool>(
        "remove_dead_states",
        "remove unreachable and irrelevant states from all abstractions "
        "before generating constraints",
        "true");

    parser.add_option<bool>(
        "single_transition_optimization",
        "do not introduce transition-counting variables and linking constraints "
        "if an operator only induces one transition in an abstraction",
        "true");

    parser.add_option<bool>(
        "self_loop_optimization",
        "do not introduce transition-counting variables and linking constraints "
        "if an operator only induces self loops in an abstraction",
        "true");

    parser.add_option<bool>(
        "weak_linking_constraints",
        "use weak linking constraints instead of strong linking constraints in cases "
        "where this does not lead to lower heuristic quality",
        "true");

    parser.add_option<bool>(
        "use_mutexes",
        "remove states from abstract transition systems that violate mutex information",
        "true");

    parser.add_option<bool>(
        "partial_merges",
        "incremental detection of partial merges",
        "true");

    parser.add_option<int>(
        "max_merge_feature_size",
        "maximal size of features added with partial merges",
        "2",
        Bounds("2", "infinity"));

    parser.add_option<double>(
        "partial_merge_time_limit",
        "Stop merging facts after x seconds",
        "infinity",
        Bounds("0.0", "infinity"));

    parser.add_option<double>(
        "merge_lp_solve_time_limit",
        "Stop merging facts if solving the LP once takes more than x seconds",
        "infinity",
        Bounds("0.0", "infinity"));

    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;
    return make_shared<FlowConstraints>(opts);
}

static Plugin<ConstraintGenerator> _plugin("flow_constraints", _parse);
}

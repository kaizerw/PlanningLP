#include "explicit_projection.h"

#include "../utils/collections.h"
#include "../utils/logging.h"
#include "../utils/math.h"

#include <limits>
#include <unordered_map>

using namespace std;

namespace pdbs {
int rank_state(const Pattern &pattern, const vector<int> &hash_multipliers,
               const State &state) {
    size_t index = 0;
    for (size_t i = 0; i < pattern.size(); ++i) {
        index += hash_multipliers[i] * state[pattern[i]].get_value();
    }
    return index;
}

int rank_abstract_state(const vector<int> &hash_multipliers,
                        const vector<int> &state) {
    size_t index = 0;
    for (size_t i = 0; i < state.size(); ++i) {
        index += hash_multipliers[i] * state[i];
    }
    return index;
}

vector<int> unrank_abstract_state(const Pattern &pattern,
                                  const vector<int> &hash_multipliers,
                                  int index) {
    vector<int> values(pattern.size());
    for (int i = pattern.size() - 1; i >= 0; --i) {
        values[i] = index / hash_multipliers[i];
        index -= values[i] * hash_multipliers[i];
    }
    assert(index == 0);
    return values;
}

bool is_goal_state(const vector<int> &unranked, const vector<FactPair> &goals) {
    for (FactPair goal : goals) {
        if (unranked[goal.var] != goal.value) {
            return false;
        }
    }
    return true;
}

bool violates_mutex(const vector<int> &abstract_state,
                    const pdbs::Pattern &pattern, const TaskProxy &task_proxy) {
    VariablesProxy vars = task_proxy.get_variables();
    int num_pattern_vars = pattern.size();
    assert(num_pattern_vars == static_cast<int>(abstract_state.size()));
    for (int i1 = 0; i1 < num_pattern_vars; ++i1) {
        FactProxy f1 = vars[pattern[i1]].get_fact(abstract_state[i1]);
        for (int i2 = i1 + 1; i2 < num_pattern_vars; ++i2) {
            FactProxy f2 = vars[pattern[i2]].get_fact(abstract_state[i2]);
            if (f1.is_mutex(f2)) {
                return true;
            }
        }
    }
    return false;
}

int compute_hash_multipliers(const Pattern &pattern,
                             const TaskProxy &task_proxy,
                             vector<int> &hash_multipliers) {
    assert(hash_multipliers.empty());
    hash_multipliers.reserve(pattern.size());
    int num_states = 1;
    for (int pattern_var_id : pattern) {
        hash_multipliers.push_back(num_states);
        VariableProxy var = task_proxy.get_variables()[pattern_var_id];
        if (utils::is_product_within_limit(num_states, var.get_domain_size(),
                                           numeric_limits<int>::max())) {
            num_states *= var.get_domain_size();
        } else {
            cerr << "Given pattern is too large! (Overflow occured): " << endl;
            cerr << pattern << endl;
            utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
    }

    return num_states;
}

class ForwardAbstractOperator {
   public:
    vector<FactPair> preconditions;
    int hash_effect;
    int id;

    ForwardAbstractOperator(int op_id, const vector<FactPair> &prev_pairs,
                            const vector<FactPair> &pre_pairs,
                            const vector<FactPair> &eff_pairs,
                            const vector<int> &hash_multipliers);
    bool is_appliable(const vector<int> &unranked) const;
};

ForwardAbstractOperator::ForwardAbstractOperator(
    int op_id, const vector<FactPair> &prev_pairs,
    const vector<FactPair> &pre_pairs, const vector<FactPair> &eff_pairs,
    const vector<int> &hash_multipliers) {
    id = op_id;

    preconditions.insert(preconditions.end(), prev_pairs.begin(),
                         prev_pairs.end());
    preconditions.insert(preconditions.end(), pre_pairs.begin(),
                         pre_pairs.end());

    hash_effect = 0;
    assert(pre_pairs.size() == eff_pairs.size());
    for (size_t i = 0; i < pre_pairs.size(); ++i) {
        int var = pre_pairs[i].var;
        assert(var == eff_pairs[i].var);
        int pre = pre_pairs[i].value;
        int post = eff_pairs[i].value;
        assert(pre != -1);
        size_t effect = (post - pre) * hash_multipliers[var];
        hash_effect += effect;
    }
}

bool ForwardAbstractOperator::is_appliable(const vector<int> &unranked) const {
    for (FactPair fact : preconditions) {
        if (unranked[fact.var] != fact.value) {
            return false;
        }
    }
    return true;
}

void multiply_out(int op_id, int pos, vector<FactPair> &prev_pairs,
                  vector<FactPair> &pre_pairs, vector<FactPair> &eff_pairs,
                  const vector<FactPair> &effects_without_pre,
                  const VariablesProxy &variables, const Pattern &pattern,
                  const vector<int> &hash_multipliers,
                  vector<ForwardAbstractOperator> &operators) {
    if (pos == static_cast<int>(effects_without_pre.size())) {
        // All effects without precondition have been checked: insert op.
        operators.emplace_back(op_id, prev_pairs, pre_pairs, eff_pairs,
                               hash_multipliers);
    } else {
        // For each possible value for the current variable, build an
        // abstract operator.
        int var_id = effects_without_pre[pos].var;
        int eff = effects_without_pre[pos].value;
        VariableProxy var = variables[pattern[var_id]];
        for (int i = 0; i < var.get_domain_size(); ++i) {
            if (i != eff) {
                pre_pairs.emplace_back(var_id, i);
                eff_pairs.emplace_back(var_id, eff);
            } else {
                prev_pairs.emplace_back(var_id, i);
            }
            multiply_out(op_id, pos + 1, prev_pairs, pre_pairs, eff_pairs,
                         effects_without_pre, variables, pattern,
                         hash_multipliers, operators);
            if (i != eff) {
                pre_pairs.pop_back();
                eff_pairs.pop_back();
            } else {
                prev_pairs.pop_back();
            }
        }
    }
}

bool build_abstract_operators(const OperatorProxy &op,
                              const vector<int> &variable_to_index,
                              const VariablesProxy &variables,
                              const Pattern &pattern,
                              const vector<int> &hash_multipliers,
                              vector<ForwardAbstractOperator> &operators) {
    // All variable value pairs that are a prevail condition
    vector<FactPair> prev_pairs;
    // All variable value pairs that are a precondition (value != -1)
    vector<FactPair> pre_pairs;
    // All variable value pairs that are an effect
    vector<FactPair> eff_pairs;
    // All variable value pairs that are a precondition (value = -1)
    vector<FactPair> effects_without_pre;

    size_t num_vars = variables.size();
    vector<bool> has_precond_and_effect_on_var(num_vars, false);
    vector<int> precondition_on_var(num_vars, -1);

    for (FactProxy pre : op.get_preconditions())
        precondition_on_var[pre.get_variable().get_id()] = pre.get_value();

    for (EffectProxy eff : op.get_effects()) {
        int var_id = eff.get_fact().get_variable().get_id();
        int pattern_var_id = variable_to_index[var_id];
        int val = eff.get_fact().get_value();
        if (pattern_var_id != -1) {
            if (precondition_on_var[var_id] != -1) {
                if (precondition_on_var[var_id] != val) {
                    has_precond_and_effect_on_var[var_id] = true;
                    eff_pairs.emplace_back(pattern_var_id, val);
                }
            } else {
                effects_without_pre.emplace_back(pattern_var_id, val);
            }
        }
    }
    for (FactProxy pre : op.get_preconditions()) {
        int var_id = pre.get_variable().get_id();
        int pattern_var_id = variable_to_index[var_id];
        int val = pre.get_value();
        if (pattern_var_id != -1) {  // variable occurs in pattern
            if (has_precond_and_effect_on_var[var_id]) {
                pre_pairs.emplace_back(pattern_var_id, val);
            } else {
                prev_pairs.emplace_back(pattern_var_id, val);
            }
        }
    }
    if (eff_pairs.empty() && effects_without_pre.empty() &&
        prev_pairs.empty()) {
        return false;
    } else {
        multiply_out(op.get_id(), 0, prev_pairs, pre_pairs, eff_pairs,
                     effects_without_pre, variables, pattern, hash_multipliers,
                     operators);
        return true;
    }
}

pair<AbstractionFunction, AbstractTransitionSystem> prune_transition_system(
    const AbstractionFunction &alpha,
    const AbstractTransitionSystem &transition_system, const vector<bool> &keep,
    const vector<bool> &merge_to_dummy_state) {
    vector<int> index_translation(transition_system.num_states, -1);
    int num_remaining_states = 0;
    if (!merge_to_dummy_state.empty()) {
        // Use state 0 as a dummy state.
        num_remaining_states = 1;
    }
    for (int old_state = 0; old_state < transition_system.num_states;
         ++old_state) {
        if (keep[old_state]) {
            if (!merge_to_dummy_state.empty() &&
                merge_to_dummy_state[old_state]) {
                index_translation[old_state] = 0;
            } else {
                index_translation[old_state] = num_remaining_states;
                ++num_remaining_states;
            }
        }
    }

    if (num_remaining_states == transition_system.num_states) {
        return make_pair(alpha, transition_system);
    }

    AbstractTransitionSystem pruned_ts;
    pruned_ts.num_states = num_remaining_states;

    assert(keep[transition_system.initial_state]);
    pruned_ts.initial_state =
        index_translation[transition_system.initial_state];

    for (int goal : transition_system.goal_states) {
        if (keep[goal]) {
            pruned_ts.goal_states.push_back(index_translation[goal]);
        }
    }
    utils::sort_unique(pruned_ts.goal_states);

    pruned_ts.self_loops_on_all_states =
        transition_system.self_loops_on_all_states;

    unordered_map<int, vector<int>> self_loops_by_op;
    for (Transition t : transition_system.self_loops) {
        int source = t.source;
        if (keep[source]) {
            self_loops_by_op[t.op_id].push_back(index_translation[source]);
        }
    }

    for (Transition t : transition_system.state_changing_transitions) {
        int source = t.source;
        int target = t.target;
        if (keep[source] && keep[target]) {
            int new_source = index_translation[source];
            int new_target = index_translation[target];
            if (new_source == new_target) {
                self_loops_by_op[t.op_id].push_back(new_source);
            } else {
                pruned_ts.state_changing_transitions.emplace_back(
                    new_source, new_target, t.op_id);
            }
        }
    }

    for (auto &entry : self_loops_by_op) {
        int op_id = entry.first;
        vector<int> &sources = entry.second;
        utils::sort_unique(sources);
        if (static_cast<int>(sources.size()) == pruned_ts.num_states) {
            pruned_ts.self_loops_on_all_states.push_back(op_id);
        } else {
            for (int source : sources) {
                pruned_ts.self_loops.emplace_back(source, source, op_id);
            }
        }
    }

    AbstractionFunction alpha_pruned(alpha, move(index_translation));
    return make_pair(alpha_pruned, pruned_ts);
}

AbstractionFunction::AbstractionFunction(const Pattern &pattern,
                                         const vector<int> &hash_multipliers)
    : pattern(pattern), hash_multipliers(hash_multipliers) {}

AbstractionFunction::AbstractionFunction(const AbstractionFunction &other,
                                         vector<int> &&index_translation)
    : pattern(other.pattern),
      hash_multipliers(other.hash_multipliers),
      index_translation(move(index_translation)) {}

int AbstractionFunction::get_abstract_state(const State &state) const {
    int state_id = rank_state(pattern, hash_multipliers, state);
    if (index_translation.empty()) {
        return state_id;
    } else {
        assert(utils::in_bounds(state_id, index_translation));
        return index_translation[state_id];
    }
}

pair<AbstractionFunction, AbstractTransitionSystem> project_task(
    const AbstractTask &task, const Pattern &pattern, bool remove_dead_states,
    bool use_mutexes, const vector<vector<int>> &partial_merge_states) {
    utils::unused_variable(remove_dead_states);
    utils::unused_variable(use_mutexes);

    TaskProxy task_proxy(task);
    AbstractTransitionSystem transition_system;

    vector<int> hash_multipliers;
    transition_system.num_states =
        compute_hash_multipliers(pattern, task_proxy, hash_multipliers);

    VariablesProxy variables = task_proxy.get_variables();
    vector<int> variable_to_index(variables.size(), -1);
    for (size_t i = 0; i < pattern.size(); ++i) {
        variable_to_index[pattern[i]] = i;
    }

    State task_initial_state = task_proxy.get_initial_state();
    transition_system.initial_state =
        rank_state(pattern, hash_multipliers, task_initial_state);

    vector<FactPair> abstract_goal;
    for (FactProxy goal : task_proxy.get_goals()) {
        int var_pattern_index = variable_to_index[goal.get_variable().get_id()];
        if (var_pattern_index != -1) {
            abstract_goal.emplace_back(var_pattern_index, goal.get_value());
        }
    }

    vector<ForwardAbstractOperator> abstract_operators;
    for (OperatorProxy op : task_proxy.get_operators()) {
        int op_relevant =
            build_abstract_operators(op, variable_to_index, variables, pattern,
                                     hash_multipliers, abstract_operators);
        if (!op_relevant) {
            transition_system.self_loops_on_all_states.push_back(op.get_id());
        }
    }

    vector<bool> seen(transition_system.num_states, false);
    vector<int> queue;
    vector<vector<int>> inverse_transitions(transition_system.num_states);
    queue.reserve(transition_system.num_states);
    if (remove_dead_states) {
        // Only generate states/transitions that are forward reachable.
        queue.push_back(transition_system.initial_state);
    } else {
        // Generate all states/transitions.
        for (int state = 0; state < transition_system.num_states; ++state) {
            queue.push_back(state);
        }
    }
    while (!queue.empty()) {
        int source = queue.back();
        queue.pop_back();

        if (seen[source]) {
            continue;
        }
        seen[source] = true;

        vector<int> unranked =
            unrank_abstract_state(pattern, hash_multipliers, source);
        if (is_goal_state(unranked, abstract_goal)) {
            transition_system.goal_states.push_back(source);
        }

        for (const ForwardAbstractOperator &op : abstract_operators) {
            if (op.is_appliable(unranked)) {
                if (op.hash_effect == 0) {
                    transition_system.self_loops.emplace_back(source, source,
                                                              op.id);
                } else {
                    int target = source + op.hash_effect;
                    transition_system.state_changing_transitions.emplace_back(
                        source, target, op.id);
                    queue.push_back(target);
                    inverse_transitions[target].push_back(source);
                }
            }
        }
    }

    vector<bool> keep(seen);
    if (use_mutexes) {
        for (int state = 0; state < transition_system.num_states; ++state) {
            if (keep[state]) {
                vector<int> unranked =
                    unrank_abstract_state(pattern, hash_multipliers, state);
                keep[state] = !violates_mutex(unranked, pattern, task_proxy);
            }
        }
    }

    if (remove_dead_states) {
        vector<bool> backwards_seen(transition_system.num_states, false);
        vector<int> backwards_queue;
        for (int goal : transition_system.goal_states) {
            if (keep[goal]) {
                backwards_queue.push_back(goal);
            }
        }
        while (!backwards_queue.empty()) {
            int target = backwards_queue.back();
            backwards_queue.pop_back();

            if (backwards_seen[target] || !keep[target]) {
                continue;
            }
            backwards_seen[target] = true;

            for (int source : inverse_transitions[target]) {
                backwards_queue.push_back(source);
            }
        }
        for (int state = 0; state < transition_system.num_states; ++state) {
            keep[state] = keep[state] && backwards_seen[state];
        }
    }
    keep[transition_system.initial_state] = true;

    vector<bool> merge_to_dummy_state;
    if (!partial_merge_states.empty()) {
        merge_to_dummy_state.resize(transition_system.num_states, true);
        for (const vector<int> &abstract_state : partial_merge_states) {
            merge_to_dummy_state[rank_abstract_state(hash_multipliers,
                                                     abstract_state)] = false;
        }
    }

    AbstractionFunction alpha(pattern, hash_multipliers);
    return prune_transition_system(alpha, transition_system, keep,
                                   merge_to_dummy_state);
}

void dump(const AbstractTransitionSystem &ts) {
    cout << "num_states: " << ts.num_states << endl;

    cout << "init: " << ts.initial_state << endl;

    cout << "goals: ";
    for (int g : ts.goal_states) {
        cout << g << ", ";
    }
    cout << endl;

    cout << "irrelevant: ";
    for (int i : ts.self_loops_on_all_states) {
        cout << i << ", ";
    }
    cout << endl;

    vector<vector<vector<int>>> transitions(ts.num_states,
                                            vector<vector<int>>(ts.num_states));

    for (Transition t : ts.state_changing_transitions) {
        transitions[t.source][t.target].push_back(t.op_id);
    }
    for (Transition t : ts.self_loops) {
        transitions[t.source][t.source].push_back(t.op_id);
    }

    cout << "Transitions:" << endl;
    for (int source = 0; source < ts.num_states; ++source) {
        for (int target = 0; target < ts.num_states; ++target) {
            if (transitions[source][target].empty()) continue;
            cout << source << " -> " << target << " [label=\"";
            for (int op_id : transitions[source][target]) {
                cout << op_id << ", ";
            }
            cout << "\"]" << endl;
        }
    }
}
}  // namespace pdbs

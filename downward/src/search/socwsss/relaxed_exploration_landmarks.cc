#include "relaxed_exploration_landmarks.h"

RelaxedExplorationLandmarks::RelaxedExplorationLandmarks(
    const TaskProxy &task_proxy)
    : task_proxy(task_proxy) {
    exploration = make_shared<Exploration>(task_proxy);
}

vector<int> RelaxedExplorationLandmarks::operator()(bool level_out,
                                                    bool compute_lvl_op) {
    vector<int> action_landmarks;
    OperatorsProxy operators = task_proxy.get_operators();
    for (OperatorProxy op : operators) {
        vector<vector<int>> lvl_var;
        vector<utils::HashMap<FactPair, int>> lvl_op;

        VariablesProxy variables = task_proxy.get_variables();
        lvl_var.resize(variables.size());
        for (VariableProxy var : variables) {
            lvl_var[var.get_id()].resize(var.get_domain_size(),
                                         numeric_limits<int>::max());
        }

        unordered_set<int> exclude_op_ids;
        exclude_op_ids.emplace(op.get_id());
        vector<FactPair> exclude_props;

        exploration->compute_reachability_with_excludes(
            lvl_var, lvl_op, level_out, exclude_props, exclude_op_ids,
            compute_lvl_op);

        for (FactProxy goal : task_proxy.get_goals()) {
            if (lvl_var[goal.get_variable().get_id()][goal.get_value()] ==
                numeric_limits<int>::max()) {
                action_landmarks.emplace_back(op.get_id());
            }
        }
    }
    return action_landmarks;
}
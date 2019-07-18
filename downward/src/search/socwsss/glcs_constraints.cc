#include "glcs_constraints.h"

namespace operator_counting {

GLCSConstraints::GLCSConstraints(
    shared_ptr<vector<lp::LPVariable>>& lp_variables,
    shared_ptr<vector<lp::LPConstraint>>& lp_constraints,
    shared_ptr<vector<int>>& idx_extra_variables,
    shared_ptr<vector<int>>& idx_extra_constraints,
    shared_ptr<vector<shared_ptr<GLC>>>& glcs,
    shared_ptr<vector<vector<int>>>& bounds_literals,
    vector<int>& initial_op_count)
    : lp_variables(lp_variables),
      lp_constraints(lp_constraints),
      idx_extra_variables(idx_extra_variables),
      idx_extra_constraints(idx_extra_constraints),
      glcs(glcs),
      bounds_literals(bounds_literals),
      initial_op_count(initial_op_count) {}

void GLCSConstraints::initialize_constraints(
    const shared_ptr<AbstractTask> task, vector<lp::LPVariable>& variables,
    vector<lp::LPConstraint>& constraints, double /*infinity*/) {
    TaskProxy task_proxy(*task);
    n_ops = task_proxy.get_operators().size();

    for (int i : (*idx_extra_variables)) {
        lp::LPVariable lp_variable(lp_variables->at(i));
        lp_variable.is_integer = false;
        variables.emplace_back(lp_variable);
    }

    for (int i : (*idx_extra_constraints)) {
        constraints.emplace_back(lp_constraints->at(i));
    }
}

bool GLCSConstraints::update_constraints(
    const State& /*state*/, lp::LPSolver& lp_solver,
    shared_ptr<vector<int>> state_op_count) {
    // Calculate difference between initial_op_count and state_op_count
    vector<int> diff;
    transform(initial_op_count.begin(), initial_op_count.end(),
              state_op_count->begin(), back_inserter(diff),
              [](int i, int j) { return i - j; });
    int diff_sum = accumulate(diff.begin(), diff.end(), 0);

    // Adding updated learned GLCs
    vector<lp::LPConstraint> glcs_constraints;
    for (auto& glc : (*glcs)) {
        int yt_bound = glc->yt_bound;
        int last_yt_bound = (*bounds_literals)[n_ops].size() - 1;
        int new_yt_bound = yt_bound - diff_sum;

        lp::LPConstraint c(1.0, lp_solver.get_infinity());
        if (new_yt_bound > 0) {
            if (new_yt_bound <= last_yt_bound) {
                c.insert((*bounds_literals)[n_ops][new_yt_bound], 1.0);
            } else {
                c.insert(n_ops, (1.0 / new_yt_bound));
            }
        }
        for (auto& [op_id, op_bound] : glc->ops_bounds) {
            int last_op_bound = (*bounds_literals)[op_id].size() - 1;
            int new_op_bound = op_bound - diff[op_id];

            if (new_op_bound > 0) {
                if (new_op_bound <= last_op_bound) {
                    c.insert((*bounds_literals)[op_id][new_op_bound], 1.0);
                } else {
                    c.insert(op_id, (1.0 / new_op_bound));
                }
            }
        }

        if (!c.empty()) {
            glcs_constraints.emplace_back(c);
        }
    }

    // Add glcs_constraints to lp_solver
    lp_solver.add_temporary_constraints(glcs_constraints);

    return false;
}
}  // namespace operator_counting

#include "glcs_constraints.h"

namespace operator_counting {

GLCSConstraints::GLCSConstraints(shared_ptr<vector<shared_ptr<GLC>>>& glcs,
                                 vector<int>& initial_op_count)
    : glcs(glcs), initial_op_count(initial_op_count) {}

void GLCSConstraints::get_domain_constraints(
    int op_id, int op_id_bl, int current_bound, int previous_bound,
    vector<lp::LPVariable>& variables, vector<lp::LPConstraint>& constraints,
    double infinity) {
    // Create binary variables
    for (int i = previous_bound + 1; i <= current_bound; ++i) {
        bounds_literals[op_id_bl].emplace_back(variables.size());
        variables.emplace_back(0, 1, 0);
    }

    // Create constraints (1): [Yo >= k] - [Yo >= k - 1] <= 0
    for (int i = current_bound; i > previous_bound; --i) {
        lp::LPConstraint c1(-infinity, 0.0);

        int id_k = bounds_literals[op_id_bl][i];
        int id_k_minus_1 = bounds_literals[op_id_bl][i - 1];

        c1.insert(id_k, 1.0);
        c1.insert(id_k_minus_1, -1.0);

        constraints.emplace_back(c1);
    }

    // Create constraint (2): sum([Yo >= i], i=1...k) - Yo <= 0
    lp::LPConstraint c2(-infinity, 0.0);
    for (int i = 1; i <= current_bound; ++i) {
        int id_k = bounds_literals[op_id_bl][i];
        c2.insert(id_k, 1.0);
    }
    c2.insert(op_id, -1.0);

    // Create constraint (3): Yo - M*[Yo >= k] <= k - 1
    double M = 1e10;
    lp::LPConstraint c3(-infinity, current_bound - 1);
    c3.insert(op_id, 1.0);
    c3.insert(bounds_literals[op_id_bl][current_bound], -M);

    // Update constraints 2 and 3 of this operator
    auto [ix2, ix3] = c23_ops[op_id_bl];
    if (ix2 == -1 && ix3 == -1) {
        // If constraints 2 and 3 don't exist for this operator then create them
        constraints.emplace_back(c2);
        constraints.emplace_back(c3);

        c23_ops[op_id_bl] = {constraints.size() - 2, constraints.size() - 1};
    } else {
        // If constraints 2 and 3 already exist for this operator then update
        // them
        constraints[ix2] = c2;
        constraints[ix3] = c3;
    }
}

void GLCSConstraints::initialize_constraints(
    const shared_ptr<AbstractTask> task, vector<lp::LPVariable>& variables,
    vector<lp::LPConstraint>& constraints, double infinity) {
    TaskProxy task_proxy(*task);
    n_ops = task_proxy.get_operators().size();

    // Create variable Y_T
    yt_index = variables.size();
    variables.emplace_back(0, infinity, 0);

    // Create constraint:
    // 0 <= sum(Yo, o in O) - Y_T <= 0
    lp::LPConstraint constraint_yt(0.0, 0.0);
    for (OperatorProxy op : task_proxy.get_operators()) {
        constraint_yt.insert(op.get_id(), 1.0);
    }
    constraint_yt.insert(yt_index, -1.0);
    constraints.emplace_back(constraint_yt);

    // Initialize c23_ops
    c23_ops = vector<pair<int, int>>(vector(n_ops + 1, pair(-1, -1)));

    // Initialize bounds_literals for k = 0
    bounds_literals = vector<vector<int>>(n_ops + 1, vector<int>());
    for (int op_id = 0; op_id < n_ops + 1; ++op_id) {
        bounds_literals[op_id].emplace_back(variables.size());
        variables.emplace_back(0, 1, 0);
    }

    // Create new bounds literals if needed
    for (auto& glc : (*glcs)) {
        int yt_bound = glc->yt_bound;
        int last_yt_bound = bounds_literals[n_ops].size() - 1;

        if (yt_bound > 0 && yt_bound > last_yt_bound) {
            get_domain_constraints(yt_index, n_ops, yt_bound, last_yt_bound,
                                   variables, constraints, infinity);
        }
        for (auto& [op_id, op_bound] : glc->ops_bounds) {
            int last_op_bound = bounds_literals[op_id].size() - 1;

            if (op_bound > last_op_bound) {
                get_domain_constraints(op_id, op_id, op_bound, last_op_bound,
                                       variables, constraints, infinity);
            }
        }
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
        int last_yt_bound = bounds_literals[n_ops].size() - 1;
        int new_yt_bound = yt_bound - diff_sum;

        lp::LPConstraint c(1.0, lp_solver.get_infinity());
        if (new_yt_bound > 0) {
            if (new_yt_bound <= last_yt_bound) {
                c.insert(bounds_literals[n_ops][new_yt_bound], 1.0);
            } else {
                c.insert(yt_index, (1.0 / new_yt_bound));
            }
        }
        for (auto& [op_id, op_bound] : glc->ops_bounds) {
            int last_op_bound = bounds_literals[op_id].size() - 1;
            int new_op_bound = op_bound - diff[op_id];

            if (new_op_bound > 0) {
                if (new_op_bound <= last_op_bound) {
                    c.insert(bounds_literals[op_id][new_op_bound], 1.0);
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

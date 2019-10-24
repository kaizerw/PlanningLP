#ifndef OPERATOR_COUNTING_GLCS_CONSTRAINTS_H
#define OPERATOR_COUNTING_GLCS_CONSTRAINTS_H

#include "../lp/lp_solver.h"
#include "../operator_counting/constraint_generator.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"
#include "../utils/markup.h"
#include "../utils/memory.h"

#include "../glc.h"

#include <algorithm>
#include <cassert>
#include <memory>
#include <numeric>
#include <utility>
#include <vector>

using namespace std;

namespace operator_counting {
class GLCSConstraints : public ConstraintGenerator {
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    vector<long> initial_op_count;

    int n_ops;
    int yt_index;
    vector<pair<int, int>> c23_ops;
    vector<vector<int>> bounds_literals;

   public:
    GLCSConstraints(shared_ptr<vector<shared_ptr<GLC>>>& glcs,
                    vector<long>& initial_op_count);
    void get_domain_constraints(int op_id, int op_id_bl, int current_bound,
                                int previous_bound,
                                vector<lp::LPVariable>& variables,
                                vector<lp::LPConstraint>& constraints,
                                double infinity);
    virtual void initialize_constraints(
        const std::shared_ptr<AbstractTask> task,
        std::vector<lp::LPVariable>& variables,
        std::vector<lp::LPConstraint>& constraints, double infinity) override;
    virtual bool update_constraints(
        const State& state, lp::LPSolver& lp_solver,
        shared_ptr<vector<long>> state_op_count = nullptr) override;
};
}  // namespace operator_counting

#endif

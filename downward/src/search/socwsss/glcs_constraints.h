#ifndef OPERATOR_COUNTING_GLCS_CONSTRAINTS_H
#define OPERATOR_COUNTING_GLCS_CONSTRAINTS_H

#include "../lp/lp_solver.h"
#include "../operator_counting/constraint_generator.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"
#include "../utils/markup.h"
#include "../utils/memory.h"

#include "glc.h"

#include <algorithm>
#include <cassert>
#include <memory>
#include <numeric>
#include <vector>

using namespace std;

namespace operator_counting {
class GLCSConstraints : public ConstraintGenerator {
    shared_ptr<vector<lp::LPVariable>> lp_variables;
    shared_ptr<vector<lp::LPConstraint>> lp_constraints;
    shared_ptr<vector<int>> idx_extra_variables;
    shared_ptr<vector<int>> idx_extra_constraints;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<vector<vector<int>>> bounds_literals;
    vector<int> initial_op_count;

    int n_ops;

   public:
    GLCSConstraints(shared_ptr<vector<lp::LPVariable>>& lp_variables,
                    shared_ptr<vector<lp::LPConstraint>>& lp_constraints,
                    shared_ptr<vector<int>>& idx_extra_variables,
                    shared_ptr<vector<int>>& idx_extra_constraints,
                    shared_ptr<vector<shared_ptr<GLC>>>& glcs,
                    shared_ptr<vector<vector<int>>>& bounds_literals,
                    vector<int>& initial_op_count);
    virtual void initialize_constraints(
        const std::shared_ptr<AbstractTask> task,
        std::vector<lp::LPVariable>& variables,
        std::vector<lp::LPConstraint>& constraints, double infinity) override;
    virtual bool update_constraints(
        const State& state, lp::LPSolver& lp_solver,
        shared_ptr<vector<int>> state_op_count = nullptr) override;
};
}  // namespace operator_counting

#endif

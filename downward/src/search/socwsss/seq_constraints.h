#ifndef SOCWSSS_SEQ_CONSTRAINTS_H
#define SOCWSSS_SEQ_CONSTRAINTS_H

#include "../lp/lp_solver.h"
#include "../task_utils/task_properties.h"

using namespace std;

#include <memory>
#include <set>

class TaskProxy;

namespace lp {
class LPConstraint;
}

/* A proposition is an atom of the form Var = Val. It stores the index of the
   constraint representing it in the LP */
struct Prop {
    int constraint_index;
    set<int> always_produced_by;
    set<int> sometimes_produced_by;
    set<int> always_consumed_by;
    set<int> sometimes_consumed_by;

    Prop() : constraint_index(-1) {}
    ~Prop() = default;
};

struct SEQConstraints {
    bool use_safety_improvement;
    bool use_only_upper_bounds;
    vector<vector<Prop>> propositions;
    // Map goal variables to their goal value and other variables to max int.
    vector<int> goal_state;
    vector<bool> is_safe;

    void build_propositions(const TaskProxy &task_proxy);
    void add_constraints(vector<lp::LPConstraint> &constraints,
                         double infinity);

    SEQConstraints(bool use_safety_improvement = true,
                   bool use_only_upper_bounds = false);
    void operator()(const shared_ptr<AbstractTask> &task,
                    vector<lp::LPConstraint> &constraints, double infinity,
                    const State &state);
};

#endif

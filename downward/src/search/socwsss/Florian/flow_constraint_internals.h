#ifndef OPERATOR_COUNTING_FLOW_CONSTRAINT_INTERNALS_H
#define OPERATOR_COUNTING_FLOW_CONSTRAINT_INTERNALS_H

#include "../../lp/lp_solver.h"
#include "../../pdbs/explicit_projection.h"
#include "../../pdbs/pattern_generator.h"
#include "../../utils/logging.h"
#include "../../utils/memory.h"

#include <vector>

using namespace std;

namespace options {
class Options;
}

enum class OperatorCategory {
    IGNORE_OPERATOR,
    USE_OP_COUNT_DIRECTLY,
    USE_WEAK_LINKING_CONSTRAINT,
    USE_STRONG_LINKING_CONSTRAINT
};

struct FlowConstraintSettings {
    pdbs::Pattern pattern;
    bool remove_dead_states;
    bool single_transition_optimization;
    bool self_loop_optimization;
    bool weak_linking_constraints;
    bool use_mutexes;
    std::vector<std::vector<int>> partial_merge_states;
};

struct FlowConstraintInternals {
    std::vector<bool> is_goal;
    int state_constraint_offset;
    int current_state;
    bool initial_state_is_dead_end;
    int single_goal_state;
    std::unique_ptr<pdbs::AbstractionFunction> abstraction_function;

    int num_abstract_states;

    std::vector<OperatorCategory> get_operator_categories(
        const pdbs::AbstractTransitionSystem &transition_system,
        const TaskProxy &task_proxy, const FlowConstraintSettings &settings);
    void create_constraints(
        std::vector<lp::LPVariable> &variables,
        std::vector<lp::LPConstraint> &constraints, double infinity,
        const pdbs::AbstractTransitionSystem &transition_system,
        const TaskProxy &task_proxy, const FlowConstraintSettings &settings);

    FlowConstraintInternals(const AbstractTask &task,
                            std::vector<lp::LPVariable> &variables,
                            std::vector<lp::LPConstraint> &constraints,
                            double infinity,
                            const FlowConstraintSettings &settings);

    bool update_constraints(const State &state,
                            vector<lp::LPConstraint> &constraints);
    int get_num_abstract_states() const { return num_abstract_states; }
};

#endif

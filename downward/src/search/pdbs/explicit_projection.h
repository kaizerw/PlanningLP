#ifndef PDBS_EXPLICIT_PROJECTION_H
#define PDBS_EXPLICIT_PROJECTION_H

#include "types.h"

#include "../abstract_task.h"
#include "../task_proxy.h"

#include <vector>

namespace pdbs {
struct Transition {
    int source;
    int target;
    int op_id;

    Transition(int source, int target, int op_id)
        : source(source), target(target), op_id(op_id) {}
};

struct AbstractTransitionSystem {
    int num_states;
    int initial_state;
    std::vector<int> goal_states;
    std::vector<Transition> state_changing_transitions;
    std::vector<Transition> self_loops;
    std::vector<int> self_loops_on_all_states;
};

class AbstractionFunction {
    std::vector<int> pattern;
    std::vector<int> hash_multipliers;
    std::vector<int> index_translation;

   public:
    AbstractionFunction(const Pattern &pattern,
                        const std::vector<int> &hash_multipliers);
    AbstractionFunction(const AbstractionFunction &other,
                        std::vector<int> &&index_translation);
    int get_abstract_state(const State &state) const;
};

std::pair<AbstractionFunction, AbstractTransitionSystem> project_task(
    const AbstractTask &task, const Pattern &pattern,
    bool remove_dead_states = true, bool use_mutexes = false,
    const std::vector<std::vector<int>> &partial_merge_states =
        std::vector<std::vector<int>>());

void dump(const AbstractTransitionSystem &ts);
}  // namespace pdbs

#endif

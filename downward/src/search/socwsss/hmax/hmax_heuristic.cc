#include "hmax_heuristic.h"

namespace soc_hmax_heuristic {
/*
  TODO: At the time of this writing, this shares huge amounts of code
        with h^add, and the two should be refactored so that the
        common code is only included once, in so far as this is
        possible without sacrificing run-time. We may want to avoid
        virtual calls in the inner-most loops; maybe a templated
        strategy pattern is an option. Right now, the only differences
        to the h^add code are the use of max() instead of add() and
        the lack of preferred operator support (but we might actually
        reintroduce that if it doesn't hurt performance too much).
 */

// construction and destruction
SOCHMaxHeuristic::SOCHMaxHeuristic(const Options &opts)
    : SOCRelaxationHeuristic(opts) {
    // cout << "Initializing HSP max heuristic..." << endl;
}

SOCHMaxHeuristic::~SOCHMaxHeuristic() {}

// heuristic computation
void SOCHMaxHeuristic::setup_exploration_queue() {
    queue.clear();

    for (vector<Proposition> &props_of_var : propositions) {
        for (Proposition &prop : props_of_var) {
            prop.cost = -1;
        }
    }

    // Deal with operators and axioms without preconditions.
    for (UnaryOperator &op : unary_operators) {
        op.unsatisfied_preconditions = op.precondition.size();
        op.cost = op.base_cost;  // will be increased by precondition costs

        if (op.unsatisfied_preconditions == 0)
            enqueue_if_necessary(op.effect, op.base_cost);
    }
}

void SOCHMaxHeuristic::setup_exploration_queue_state(const State &state) {
    for (FactProxy fact : state) {
        Proposition *init_prop = get_proposition(fact);
        enqueue_if_necessary(init_prop, 0);
    }
}

void SOCHMaxHeuristic::relaxed_exploration() {
    int unsolved_goals = goal_propositions.size();
    while (!queue.empty()) {
        pair<int, Proposition *> top_pair = queue.pop();
        int distance = top_pair.first;
        Proposition *prop = top_pair.second;
        int prop_cost = prop->cost;
        assert(prop_cost <= distance);
        if (prop_cost < distance) continue;
        if (prop->is_goal && --unsolved_goals == 0) return;
        const vector<UnaryOperator *> &triggered_operators =
            prop->precondition_of;
        for (UnaryOperator *unary_op : triggered_operators) {
            --unary_op->unsatisfied_preconditions;
            unary_op->cost =
                max(unary_op->cost, unary_op->base_cost + prop_cost);
            assert(unary_op->unsatisfied_preconditions >= 0);
            if (unary_op->unsatisfied_preconditions == 0)
                enqueue_if_necessary(unary_op->effect, unary_op->cost);
        }
    }
}

int SOCHMaxHeuristic::compute_heuristic(const GlobalState &global_state) {
    const State state = convert_global_state(global_state);

    setup_exploration_queue();
    setup_exploration_queue_state(state);
    relaxed_exploration();

    int total_cost = 0;
    for (Proposition *prop : goal_propositions) {
        int prop_cost = prop->cost;
        if (prop_cost == -1) {
            return DEAD_END;
        }
        total_cost = max(total_cost, prop_cost);
    }

    return total_cost;
}
}  // namespace soc_hmax_heuristic

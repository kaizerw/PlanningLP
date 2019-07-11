#ifndef SEARCH_ENGINES_SOC_HMAX_HEURISTIC_H
#define SEARCH_ENGINES_SOC_HMAX_HEURISTIC_H

#include "../algorithms/priority_queues.h"
#include "../global_state.h"
#include "../option_parser.h"

#include "relaxation_heuristic.h"

namespace soc_hmax_heuristic {
using soc_relaxation_heuristic::Proposition;
using soc_relaxation_heuristic::SOCRelaxationHeuristic;
using soc_relaxation_heuristic::UnaryOperator;

struct SOCHMaxHeuristic : public SOCRelaxationHeuristic {
    priority_queues::AdaptiveQueue<Proposition *> queue;

    void setup_exploration_queue();
    void setup_exploration_queue_state(const State &state);
    void relaxed_exploration();

    void enqueue_if_necessary(Proposition *prop, int cost) {
        assert(cost >= 0);
        if (prop->cost == -1 || prop->cost > cost) {
            prop->cost = cost;
            queue.push(cost, prop);
        }
        assert(prop->cost != -1 && prop->cost <= cost);
    }

    virtual int compute_heuristic(const GlobalState &global_state);
    SOCHMaxHeuristic(const options::Options &opts);
    ~SOCHMaxHeuristic();
};
}  // namespace soc_hmax_heuristic

#endif

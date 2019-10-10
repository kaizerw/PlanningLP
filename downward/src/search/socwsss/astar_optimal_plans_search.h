#ifndef ASTAR_OPTIMAL_PLANS_SEARCH_H
#define ASTAR_OPTIMAL_PLANS_SEARCH_H

#include "../algorithms/priority_queues.h"
#include "../ext/optional.hh"
#include "../global_state.h"
#include "../heuristic.h"
#include "../open_list_factory.h"
#include "../option_parser.h"
#include "../pruning_method.h"
#include "../search_engines/eager_search.h"
#include "../search_space.h"
#include "../state_registry.h"
#include "../task_utils/successor_generator.h"
#include "../task_utils/task_properties.h"
#include "../utils/collections.h"
#include "../utils/hash.h"

#include <iostream>
#include <numeric>
#include <unordered_map>

using eager_search::EagerSearch;

namespace options {
class Options;
}

using namespace std;

namespace astar_optimal_plans_search {
struct AStarOptimalPlansSearch : public EagerSearch {
    StateRegistry state_registry;
    SearchSpace search_space;
    vector<Plan> optimal_plans;

    bool check_goal_and_set_plan(const GlobalState &state);
    virtual void initialize() override;
    virtual void print_statistics() const override;
    virtual SearchStatus step() override;

    explicit AStarOptimalPlansSearch(const options::Options &opts);
    virtual ~AStarOptimalPlansSearch() = default;
};
}  // namespace astar_optimal_plans_search

#endif

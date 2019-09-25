#ifndef MINI_SEARCH_H
#define MINI_SEARCH_H

#include "../algorithms/priority_queues.h"
#include "../ext/optional.hh"
#include "../global_state.h"
#include "../heuristic.h"
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
#include <memory>
#include <numeric>

using eager_search::EagerSearch;
using OperatorCount = vector<long>;

using namespace std;

struct MiniSearch : public EagerSearch {
    GlobalState state;
    StateRegistry state_registry;
    SearchSpace search_space;
    int plan_cost = -1;

    bool check_goal_and_set_plan(const GlobalState &state);
    virtual void initialize() override;
    virtual void print_statistics() const override;
    virtual SearchStatus step() override;

    explicit MiniSearch(const options::Options &opts);
    virtual ~MiniSearch() = default;
};

struct CacheHStar {
    struct Hash {
        size_t operator()(const vector<int> &v) const;
    };

    Options opts;
    TaskProxy &task_proxy;
    unordered_map<vector<int>, int, Hash> cache;

    CacheHStar(const Options &opts, TaskProxy &task_proxy);

    int operator[](GlobalState state);
};

#endif

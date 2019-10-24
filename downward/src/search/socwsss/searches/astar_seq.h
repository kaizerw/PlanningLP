#ifndef SEARCH_SEQ_H
#define SEARCH_SEQ_H

#include "../../algorithms/priority_queues.h"
#include "../../ext/optional.hh"
#include "../../global_state.h"
#include "../../heuristic.h"
#include "../../open_list_factory.h"
#include "../../option_parser.h"
#include "../../pruning_method.h"
#include "../../search_engines/eager_search.h"
#include "../../search_space.h"
#include "../../state_registry.h"
#include "../../task_utils/successor_generator.h"
#include "../../task_utils/task_properties.h"
#include "../../utils/collections.h"
#include "../../utils/hash.h"
#include "mini_search.h"

#include "../glc.h"

#include <iostream>
#include <numeric>
#include <unordered_map>

using eager_search::EagerSearch;
using OperatorCount = vector<long>;

namespace options {
class Options;
}

using namespace std;

struct AStarSeq : public EagerSearch {
    Options opts;
    double max_f_found;
    vector<bool> ops_learned_constraint;
    long yf_bound;
    StateRegistry state_registry;
    SearchSpace search_space;
    shared_ptr<CacheHStar> cache_hstar;
    shared_ptr<GLC> learned_glc;
    bool hstar_by_search;

    bool check_goal_and_set_plan(const GlobalState &state);
    virtual void initialize() override;
    virtual void print_statistics() const override;
    virtual SearchStatus step() override;

    void generate_constraint();

    explicit AStarSeq(const options::Options &opts);
    virtual ~AStarSeq() = default;
};

#endif

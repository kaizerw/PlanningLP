#ifndef SOC_ASTAR_SEARCH_H
#define SOC_ASTAR_SEARCH_H

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
#include "hmax/hmax_heuristic.h"

#include "glc.h"

#include <iostream>
#include <numeric>

using eager_search::EagerSearch;
using OperatorCount = vector<int>;
using soc_hmax_heuristic::SOCHMaxHeuristic;

using namespace std;

namespace soc_astar_search {
struct SOCAStarSearch : public EagerSearch {
    OperatorCount initial_op_count;
    int h_oc;
    int constraint_type;
    int seq;
    bool print_search_tree;
    double max_f_found;
    vector<bool> ops_learned_constraint;
    bool yt_learned_constraint;
    StateRegistry state_registry;
    SearchSpace search_space;

    shared_ptr<GLC> learned_glc;

    bool check_goal_and_set_plan(const GlobalState &state);
    virtual void initialize() override;
    virtual void print_statistics() const override;
    virtual SearchStatus step() override;

    void generate_constraint();
    void print_node(SearchNode &node);
    void print_node(SearchNode &node, OperatorProxy &op, SearchNode &succ_node);
    void print_edge(SearchNode &node, OperatorProxy &op, SearchNode &succ_node);
    bool is_fully_expanded(SearchNode &node);
    vector<int> compute_action_landmarks(const GlobalState &state);

    explicit SOCAStarSearch(const options::Options &opts);
    virtual ~SOCAStarSearch() = default;
};
}  // namespace soc_astar_search

#endif

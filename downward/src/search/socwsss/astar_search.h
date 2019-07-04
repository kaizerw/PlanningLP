#ifndef SOC_ASTAR_SEARCH_H
#define SOC_ASTAR_SEARCH_H

#include "../pruning_method.h"
#include "../search_engines/eager_search.h"
#include "../search_space.h"
#include "../task_utils/successor_generator.h"

#include "../state_registry.h"
#include "glc.h"
#include "hmax_heuristic.h"

#include <unordered_map>
#include "../ext/optional.hh"

using eager_search::EagerSearch;
using soc_hmax_heuristic::SOCHMaxHeuristic;

using namespace std;

namespace soc_astar_search {
class SOCAStarSearch : public EagerSearch {
    ////////////////////////////////////////////////////////////////////////////
    vector<int> op_count;
    int h_oc;
    int constraint_type;
    int seq;
    bool print_search_tree;
    double max_f_found;
    vector<bool> ops_learned_constraint;
    bool yt_learned_constraint;
    StateRegistry state_registry;
    SearchSpace search_space;

    vector<shared_ptr<GLC>> learned_glcs;
    vector<StateID> collected_states;
    ////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////////////////////////////////////
    void generate_constraint();
    void print_node(SearchNode &node);
    void print_node(SearchNode &node, OperatorProxy &op, SearchNode &succ_node);
    void print_edge(SearchNode &node, OperatorProxy &op, SearchNode &succ_node);
    bool is_fully_expanded(SearchNode &node);
    vector<int> compute_action_landmarks(const GlobalState &state);
    ////////////////////////////////////////////////////////////////////////////

   protected:
    bool check_goal_and_set_plan(const GlobalState &state);
    virtual void initialize() override;
    virtual void print_statistics() const override;
    virtual SearchStatus step() override;

   public:
    explicit SOCAStarSearch(const options::Options &opts);
    virtual ~SOCAStarSearch() = default;

    ////////////////////////////////////////////////////////////////////////////
    double get_max_f_found();
    vector<shared_ptr<GLC>> get_learned_glcs();
    ////////////////////////////////////////////////////////////////////////////
};
}  // namespace soc_astar_search

#endif

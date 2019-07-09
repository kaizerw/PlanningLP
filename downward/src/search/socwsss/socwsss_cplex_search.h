#ifndef SEARCH_ENGINES_SOCWSSS_CPLEX_SEARCH_H
#define SEARCH_ENGINES_SOCWSSS_CPLEX_SEARCH_H

#include "../algorithms/ordered_set.h"
#include "../evaluation_context.h"
#include "../heuristic.h"
#include "../lp/lp_solver.h"
#include "../open_list.h"
#include "../open_list_factory.h"
#include "../operator_counting/constraint_generator.h"
#include "../option_parser.h"
#include "../plan_manager.h"
#include "../plugin.h"
#include "../pruning_method.h"
#include "../search_engine.h"
#include "../search_engines/search_common.h"
#include "../task_utils/successor_generator.h"

#include "benders.h"
#include "callbacks.h"
#include "sat_seq.h"

#include <chrono>
#include <memory>
#include <string>
#include <vector>

using namespace std;

using OperatorCount = vector<int>;

class Evaluator;
class Heuristic;

namespace options {
class Options;
}

namespace SOCWSSS_cplex_search {

struct SOCWSSSCplexSearch : public SearchEngine {
    Options opts;
    shared_ptr<Benders> benders;
    shared_ptr<CustomCallback> custom_callback;
    long custom_callback_mask = 0;

    virtual void initialize() override;
    virtual SearchStatus step() override;

    explicit SOCWSSSCplexSearch(const options::Options &opts);
    virtual ~SOCWSSSCplexSearch() = default;

    virtual void print_statistics() const override;
};
}  // namespace SOCWSSS_cplex_search

#endif

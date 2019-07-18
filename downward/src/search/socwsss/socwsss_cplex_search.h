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

#include "Florian/delete_relaxation_constraints.h"
#include "Florian/flow_constraints.h"
#include "socwssscallback.h"

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
    int constraint_type;
    string constraint_generators;
    string heuristic;
    lp::LPSolverType lp_solver_type;
    int cost_type;
    double max_time;
    int bound;
    shared_ptr<PruningMethod> pruning;
    int verbosity;

    double infinity = IloInfinity;
    int n_ops, n_vars;

    shared_ptr<vector<lp::LPVariable>> lp_variables;
    shared_ptr<vector<lp::LPConstraint>> lp_constraints;
    int k_prealloc_bounds = 2;
    shared_ptr<vector<vector<int>>> bounds_literals;
    shared_ptr<vector<vector<int>>> c1_ops;
    shared_ptr<vector<pair<int, int>>> c23_ops;
    shared_ptr<vector<int>> idx_extra_variables;
    shared_ptr<vector<int>> idx_extra_constraints;

    shared_ptr<IloEnv> env;
    shared_ptr<IloModel> model;
    shared_ptr<IloNumVarArray> x;
    shared_ptr<IloRangeArray> c;
    shared_ptr<IloObjective> obj;
    shared_ptr<IloCplex> cplex;

    shared_ptr<SOCWSSSCallback> socwsss_callback;
    long socwsss_callback_mask = 0;

    virtual void initialize() override;
    void create_base_constraints();
    void create_cplex_data();
    void get_domain_constraints(int op_id, int current_bound,
                                int previous_bound);
    virtual SearchStatus step() override;

    explicit SOCWSSSCplexSearch(const options::Options &opts);
    virtual ~SOCWSSSCplexSearch() = default;

    virtual void print_statistics() const override;
};
}  // namespace SOCWSSS_cplex_search

#endif

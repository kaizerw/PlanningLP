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
#include "relaxed_exploration_landmarks.h"
#include "socwssscallback.h"

#include <chrono>
#include <memory>
#include <string>
#include <vector>

using namespace std;

using OperatorCount = vector<long>;

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
    bool mip_start;
    bool sat_seq;
    bool best_seq;
    bool recost;
    bool hstar_search;
    bool hstar_pdb;
    int cstar;
    string callbacks;

    double infinity = IloInfinity;
    int n_ops, n_vars;
    double epsilon;

    shared_ptr<vector<lp::LPVariable>> lp_variables;
    shared_ptr<vector<lp::LPConstraint>> lp_constraints;
    int yt_index;
    int yf_index;
    int k_prealloc_bounds_ops = 2;
    int k_prealloc_bounds_yt = 2;
    shared_ptr<vector<vector<int>>> bounds_literals;
    shared_ptr<vector<int>> c2_ops;

    shared_ptr<IloEnv> env;
    shared_ptr<IloModel> model;
    shared_ptr<IloNumVarArray> x;
    shared_ptr<IloRangeArray> c;
    shared_ptr<IloObjective> obj;
    shared_ptr<IloCplex> cplex;

    shared_ptr<Shared> shared;

    shared_ptr<IloCplex::Callback> lazy_callback;
    shared_ptr<IloCplex::Callback> usercut_callback;
    shared_ptr<IloCplex::Callback> heuristic_callback;

    virtual void initialize() override;
    void calc_epsilon_recost();
    void add_base_constraints();
    void add_heuristic_constraints();
    void add_mip_start();
    void create_cplex_model();
    void get_domain_constraints(int op_id, int current_bound,
                                int previous_bound);
    virtual SearchStatus step() override;

    explicit SOCWSSSCplexSearch(const options::Options &opts);
    virtual ~SOCWSSSCplexSearch() = default;

    virtual void print_statistics() const override;
};
}  // namespace SOCWSSS_cplex_search

#endif

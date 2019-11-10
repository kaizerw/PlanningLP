#ifndef SEARCH_ENGINES_SOCWSSS_H
#define SEARCH_ENGINES_SOCWSSS_H

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

#include "callbacks.h"

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

struct SOCWSSS : public SearchEngine {
    Options opts;
    OperatorsProxy ops;
    VariablesProxy vars;
    int k_prealloc_bounds_ops;
    int k_prealloc_bounds_yt;
    int k_prealloc_bounds_yf;
    const double M;
    double epsilon;
    const double lambda;

    shared_ptr<vector<lp::LPVariable>> lp_variables;
    shared_ptr<vector<lp::LPConstraint>> lp_constraints;
    int yt_index, yf_index;
    shared_ptr<vector<vector<int>>> bounds_literals;
    shared_ptr<vector<int>> c2_ops;

    shared_ptr<IloEnv> env;
    shared_ptr<IloModel> model;
    shared_ptr<IloNumVarArray> x;
    shared_ptr<IloRangeArray> c;
    shared_ptr<IloObjective> obj;
    shared_ptr<IloCplex> cplex;

    shared_ptr<Shared> shr;

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

    explicit SOCWSSS(const options::Options &opts);
    virtual ~SOCWSSS() = default;

    virtual void print_statistics() const override;
};

#endif

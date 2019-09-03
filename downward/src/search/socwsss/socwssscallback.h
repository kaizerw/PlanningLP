#ifndef CALLBACKS_H
#define CALLBACKS_H

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wignored-attributes"
#include <ilcplex/ilocplex.h>
#pragma GCC diagnostic pop

#include "../algorithms/ordered_set.h"
#include "../evaluation_context.h"
#include "../heuristic.h"
#include "../lp/lp_solver.h"
#include "../open_list.h"
#include "../open_list_factory.h"
#include "../option_parser.h"
#include "../plan_manager.h"
#include "../pruning_method.h"
#include "../search_engine.h"
#include "../search_engines/search_common.h"
#include "../state_registry.h"
#include "../task_utils/successor_generator.h"

#include "../heuristics/blind_search_heuristic.h"
#include "../heuristics/lm_cut_heuristic.h"
#include "../operator_counting/delete_relaxation_constraints.h"
#include "../operator_counting/flow_constraints.h"
#include "../operator_counting/lm_cut_constraints.h"
#include "../operator_counting/operator_counting_heuristic.h"
#include "../operator_counting/state_equation_constraints.h"
#include "../pdbs/pattern_collection_generator_systematic.h"
#include "glcs_constraints.h"

using blind_search_heuristic::BlindSearchHeuristic;
using lm_cut_heuristic::LandmarkCutHeuristic;
using lm_cut_heuristic::LandmarkCutLandmarks;
using operator_counting::ConstraintGenerator;
using operator_counting::DeleteRelaxationConstraints;
using operator_counting::FlowConstraints;
using operator_counting::GLCSConstraints;
using operator_counting::LMCutConstraints;
using operator_counting::OperatorCountingHeuristic;
using operator_counting::StateEquationConstraints;
using pdbs::PatternCollectionGenerator;
using pdbs::PatternCollectionGeneratorSystematic;

#include "../heuristics/lm_cut_landmarks.h"
#include "astar_search.h"

#include "dynamic_merging.h"
#include "glc.h"
#include "printer_plots.h"
#include "sat_seq.h"
#include "seq_constraints.h"

#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <memory>
#include <sstream>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

using namespace std;

class Evaluator;
class Heuristic;

namespace options {
class Options;
}

struct SequenceInfo {
    bool sequenciable = false;
    shared_ptr<GLC> learned_glc = nullptr;
    Plan plan = Plan();
    int plan_cost = numeric_limits<int>::max();
};

struct CacheOperatorCounts {
    struct Hash {
        size_t operator()(const unordered_map<int, int> &v) const {
            size_t key = v.size();
            for (auto &i : v) {
                key ^= ((i.first + 1) * (i.second + 1)) + 0x9e3779b9 +
                       (key << 6) + (key >> 2);
            }
            return key;
        }
    };

    unordered_map<unordered_map<int, int>, shared_ptr<SequenceInfo>, Hash>
        cache;

    bool has(OperatorCount &op_count) {
        return (cache.count(convert(op_count)) > 0);
    }

    shared_ptr<SequenceInfo> operator[](OperatorCount &op_count) {
        return cache[convert(op_count)];
    }

    void add(OperatorCount op_count, shared_ptr<SequenceInfo> info) {
        cache[convert(op_count)] = info;
    }

    unordered_map<int, int> convert(OperatorCount &op_count) {
        unordered_map<int, int> map_op_count;
        for (size_t op_id = 0; op_id < op_count.size(); ++op_id) {
            if (op_count[op_id] > 0) {
                map_op_count[op_id] = op_count[op_id];
            }
        }
        return map_op_count;
    }

    pair<bool, shared_ptr<SequenceInfo>> get_min_plan() {
        auto it = min_element(cache.begin(), cache.end(), [](auto i, auto j) {
            return i.second->plan_cost < j.second->plan_cost;
        });

        if (it != cache.end()) {
            return {true, (*it).second};
        }

        return {false, make_shared<SequenceInfo>()};
    }
};

using Function = IloCplex::Callback::Function;
using Context = IloCplex::Callback::Context;
using GoalI = IloCplex::GoalI;
using Goal = IloCplex::Goal;
using GoalBaseI = IloCplex::GoalBaseI;
using OperatorCount = vector<long>;

struct SharedData {
    int constraint_type;
    string constraint_generators;
    string heuristic;
    bool sat_seq;
    bool mip_start;
    lp::LPSolverType lp_solver_type;
    int cost_type;
    double max_time;
    int bound;
    shared_ptr<PruningMethod> pruning;
    int verbosity;

    shared_ptr<TaskProxy> task_proxy;
    shared_ptr<AbstractTask> task;
    chrono::time_point<chrono::system_clock> start;

    shared_ptr<vector<vector<int>>> bounds_literals;
    shared_ptr<IloEnv> env;
    shared_ptr<IloModel> model;
    shared_ptr<IloNumVarArray> x;
    shared_ptr<IloRangeArray> c;
    shared_ptr<IloObjective> obj;
    shared_ptr<IloCplex> cplex;
    shared_ptr<vector<lp::LPVariable>> lp_variables;
    shared_ptr<vector<lp::LPConstraint>> lp_constraints;

    bool restart = false;
    int restarts = 0, seq = 0, repeated_seqs = 0;
    int n_ops, n_vars;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<PrinterPlots> printer_plots;

    CacheOperatorCounts cache_op_counts;

    SharedData(const Options &opts, shared_ptr<TaskProxy> task_proxy,
               shared_ptr<AbstractTask> task)
        : constraint_type(opts.get<int>("constraint_type")),
          constraint_generators(opts.get<string>("constraint_generators")),
          heuristic(opts.get<string>("heuristic")),
          sat_seq(opts.get<bool>("sat_seq")),
          mip_start(opts.get<bool>("mip_start")),
          lp_solver_type(opts.get<lp::LPSolverType>("lp_solver_type")),
          cost_type(opts.get<int>("cost_type")),
          max_time(opts.get<double>("max_time")),
          bound(opts.get<int>("bound")),
          pruning(opts.get<shared_ptr<PruningMethod>>("pruning")),
          verbosity(opts.get<int>("verbosity")),
          task_proxy(task_proxy),
          task(task),
          start(chrono::system_clock::now()) {
        n_ops = task_proxy->get_operators().size();
        n_vars = task_proxy->get_variables().size();
        glcs = make_shared<vector<shared_ptr<GLC>>>();
        printer_plots = make_shared<PrinterPlots>(n_ops, n_vars, glcs, start);
    }
};

class LazyCallbackI : public IloCplex::LazyConstraintCallbackI {
   public:
    ILOCOMMONCALLBACKSTUFF(LazyCallback)
    LazyCallbackI(IloEnv env, shared_ptr<SharedData> xx1)
        : IloCplex::LazyConstraintCallbackI(env), shared_data(xx1) {}
    void main();

   private:
    shared_ptr<SharedData> shared_data;
    double original_z;
    vector<double> original_x;
    long rounded_z;
    OperatorCount rounded_x;

    void extract_sol();
    void round_sol();
    bool test_solution();
    bool test_card();
    void sequence();
    pair<bool, shared_ptr<SequenceInfo>> get_sat_sequence(
        OperatorCount op_count);
    pair<bool, shared_ptr<SequenceInfo>> get_astar_sequence(
        long f_bound, OperatorCount op_count);
    void log(bool found_in_cache, shared_ptr<SequenceInfo> info);
    pair<int, IloExpr> get_cut(shared_ptr<GLC> learned_glc);
};

IloCplex::Callback LazyCallback(IloEnv env, shared_ptr<SharedData> shared_data);

class UserCutCallbackI : public IloCplex::UserCutCallbackI {
   public:
    ILOCOMMONCALLBACKSTUFF(UserCutCallback)
    UserCutCallbackI(IloEnv env, shared_ptr<SharedData> xx1)
        : IloCplex::UserCutCallbackI(env), shared_data(xx1) {}
    void main();

   private:
    shared_ptr<SharedData> shared_data;
    double original_z;
    vector<double> original_x;
    long rounded_z;
    OperatorCount rounded_x;

    void extract_sol();
    void round_sol();
    bool test_solution();
    bool test_card();
    void sequence();
    pair<bool, shared_ptr<SequenceInfo>> get_sat_sequence(
        OperatorCount op_count);
    pair<bool, shared_ptr<SequenceInfo>> get_astar_sequence(
        long f_bound, OperatorCount op_count);
    void log(bool found_in_cache, shared_ptr<SequenceInfo> info);
    pair<int, IloExpr> get_cut(shared_ptr<GLC> learned_glc);
};

IloCplex::Callback UserCutCallback(IloEnv env,
                                   shared_ptr<SharedData> shared_data);

class HeuristicCallbackI : public IloCplex::HeuristicCallbackI {
   public:
    ILOCOMMONCALLBACKSTUFF(HeuristicCallback)
    HeuristicCallbackI(IloEnv env, shared_ptr<SharedData> xx1)
        : IloCplex::HeuristicCallbackI(env), shared_data(xx1) {}
    void main();

   private:
    shared_ptr<SharedData> shared_data;
    double original_z;
    vector<double> original_x;
    long rounded_z;
    OperatorCount rounded_x;

    void extract_sol();
    void round_sol();
    bool test_solution();
    bool test_card();
    void sequence();
    pair<bool, shared_ptr<SequenceInfo>> get_sat_sequence(
        OperatorCount op_count);
    pair<bool, shared_ptr<SequenceInfo>> get_astar_sequence(
        long f_bound, OperatorCount op_count);
    void log(bool found_in_cache, shared_ptr<SequenceInfo> info);
    pair<int, IloExpr> get_cut(shared_ptr<GLC> learned_glc);
    void post_best_solution();
};

IloCplex::Callback HeuristicCallback(IloEnv env,
                                     shared_ptr<SharedData> shared_data);

#endif

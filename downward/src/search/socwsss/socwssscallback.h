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

using OperatorCount = vector<long>;

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

struct CacheGLCs {
    struct Hash {
        size_t operator()(const shared_ptr<GLC> &v) const {
            size_t key = v->ops_bounds.size();
            key += (v->yt_bound != -1 ? v->yt_bound : 0);
            for (auto &i : v->ops_bounds) {
                key ^= ((i.first + 1) * (i.second + 1)) + 0x9e3779b9 +
                       (key << 6) + (key >> 2);
            }
            return key;
        }
    };

    unordered_map<shared_ptr<GLC>, bool, Hash> cache;

    bool add(shared_ptr<GLC> glc) {
        if (cache.count(glc) == 0) {
            cache[glc] = false;
            return false;
        }
        return true;
    }

    void set(shared_ptr<GLC> glc, bool in_lp) { cache[glc] = in_lp; }
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

    pair<bool, shared_ptr<SequenceInfo>> get_best_plan() {
        auto it = min_element(cache.begin(), cache.end(), [](auto i, auto j) {
            return i.second->plan_cost < j.second->plan_cost;
        });

        if (it != cache.end()) {
            return {true, (*it).second};
        }

        return {false, make_shared<SequenceInfo>()};
    }
};

struct Shared {
    Options opts;
    int constraint_type;
    string constraint_generators;
    string heuristic;
    bool mip_start;
    bool sat_seq;
    bool recost;
    bool hstar;
    string callbacks;

    shared_ptr<TaskProxy> task_proxy;
    OperatorsProxy ops;
    VariablesProxy vars;
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
    double epsilon = 0;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<PrinterPlots> printer_plots;

    CacheOperatorCounts cache_op_counts;
    CacheGLCs cache_glcs;

    double original_z;
    vector<double> original_x;
    long rounded_z;
    OperatorCount rounded_x;
    bool found_in_cache;
    bool repeated_glc;
    shared_ptr<SequenceInfo> info;

    Shared(const Options &opts, shared_ptr<TaskProxy> task_proxy,
           shared_ptr<AbstractTask> task);
    bool extract_sol(IloCplex::ControlCallbackI *callback);
    bool test_card();
    void sequence();
    pair<bool, shared_ptr<SequenceInfo>> get_sat_sequence(
        OperatorCount op_count);
    pair<bool, shared_ptr<SequenceInfo>> get_astar_sequence(
        long f_bound, OperatorCount op_count);
    IloExpr get_cut(shared_ptr<GLC> learned_glc,
                    IloCplex::ControlCallbackI *callback);
    void log(IloCplex::ControlCallbackI *callback, int type);
    void post_best_plan(IloCplex::HeuristicCallbackI *callback);

    OperatorCount plan2opcount(shared_ptr<SequenceInfo> info);
    long opcount2cost(OperatorCount &op_count);
    long plan2cost(Plan &plan);
    double get_op_cost(OperatorProxy op);
};

struct LazyCallbackI : public IloCplex::LazyConstraintCallbackI {
    shared_ptr<Shared> shared;

    ILOCOMMONCALLBACKSTUFF(LazyCallback)
    LazyCallbackI(IloEnv env, shared_ptr<Shared> xx1)
        : IloCplex::LazyConstraintCallbackI(env), shared(xx1) {}
    void main();
};
IloCplex::Callback LazyCallback(IloEnv env, shared_ptr<Shared> shared);

struct UserCutCallbackI : public IloCplex::UserCutCallbackI {
    shared_ptr<Shared> shared;

    ILOCOMMONCALLBACKSTUFF(UserCutCallback)
    UserCutCallbackI(IloEnv env, shared_ptr<Shared> xx1)
        : IloCplex::UserCutCallbackI(env), shared(xx1) {}
    void main();
};
IloCplex::Callback UserCutCallback(IloEnv env, shared_ptr<Shared> shared);

struct HeuristicCallbackI : public IloCplex::HeuristicCallbackI {
    shared_ptr<Shared> shared;

    ILOCOMMONCALLBACKSTUFF(HeuristicCallback)
    HeuristicCallbackI(IloEnv env, shared_ptr<Shared> xx1)
        : IloCplex::HeuristicCallbackI(env), shared(xx1) {}
    void main();
};
IloCplex::Callback HeuristicCallback(IloEnv env, shared_ptr<Shared> shared);

#endif

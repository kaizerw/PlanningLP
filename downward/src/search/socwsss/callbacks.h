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
#include "../heuristics/lm_cut_landmarks.h"
#include "../operator_counting/delete_relaxation_constraints.h"
#include "../operator_counting/flow_constraints.h"
#include "../operator_counting/lm_cut_constraints.h"
#include "../operator_counting/operator_counting_heuristic.h"
#include "../operator_counting/state_equation_constraints.h"
#include "../pdbs/pattern_collection_generator_systematic.h"
#include "../pdbs/pattern_generator_manual.h"
#include "../pdbs/pdb_heuristic.h"

#include "searches/astar_optimal_plans_search.h"
#include "searches/astar_seq.h"
#include "searches/sat_seq.h"

#include "glc.h"
#include "printer.h"

#include "constraints/delete_relaxation_constraints.h"
#include "constraints/flow_constraints.h"
//#include "constraints/relaxed_exploration_landmarks.h"
#include "constraints/dynamic_merging.h"
#include "constraints/glcs_constraints.h"
#include "constraints/seq_constraints.h"

using astar_optimal_plans_search::AStarOptimalPlansSearch;
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
    vector<shared_ptr<GLC>> learned_glcs;
    Plan plan = Plan();
    int plan_cost = numeric_limits<int>::max();
    vector<bool> repeated_glcs;
};

struct CacheGLCs {
    struct Hash {
        size_t operator()(const shared_ptr<GLC> &v) const {
            size_t key = v->ops_bounds.size();
            key += (v->yt_bound != -1 ? v->yt_bound : 0);
            key += (v->yf_bound != -1 ? v->yf_bound : 0);
            for (auto &i : v->ops_bounds) {
                key ^= ((i.first + 1) * (i.second + 1)) + 0x9e3779b9 +
                       (key << 6) + (key >> 2);
            }
            return key;
        }
    };

    unordered_map<shared_ptr<GLC>, GLCState, Hash> cache;

    bool add(shared_ptr<GLC> glc) {
        if (cache.count(glc) == 0) {
            cache[glc] = GLCState::NEW;
            return false;
        }
        return true;
    }

    void set(shared_ptr<GLC> glc, GLCState state) {
        if (cache[glc] == GLCState::NEW) {
            cache[glc] = state;
        } else if ((cache[glc] == GLCState::ADDED_AS_USERCUT &&
                    state == GLCState::ADDED_AS_LAZY) ||
                   (cache[glc] == GLCState::ADDED_AS_LAZY &&
                    state == GLCState::ADDED_AS_USERCUT)) {
            cache[glc] = GLCState::ADDED_AS_LAZY_AND_USERCUT;
        }
    }
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

enum CallbackType { LAZY, USERCUT, HEURISTIC };

struct Shared {
    Options opts;
    shared_ptr<TaskProxy> task_proxy;
    OperatorsProxy ops;
    VariablesProxy vars;
    shared_ptr<AbstractTask> task;
    chrono::time_point<chrono::system_clock> start;
    bool restart;
    int restarts, seq, repeated_seqs;
    double epsilon;
    int yt_index;
    int yf_index;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<Printer> printer;

    shared_ptr<Evaluator> full_pdb;
    
    vector<int> plan_op_counts{
        0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1,  0,
        0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0,  1,
        0, 0, 1, 0, 0, 0, 0, 1, 6, 5, 1, 0, 0, 0, 0, 1, 0, 0, 1,  0,
        0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0,  1,
        0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 35, 35};

    double verify_bound(int op_id, int op_bound) {
        int last_bound = (*bounds_literals)[op_id].size() - 1;
        if (op_bound > 0) {
            if (op_bound <= last_bound) {
                return plan_op_counts[op_id] >= op_bound;
            } else {
                return (1.0 / op_bound) * plan_op_counts[op_id];
            }
        }
        return 0;
    }

    void verify_glc(shared_ptr<GLC> glc) {
        double sat = 0;
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            sat += verify_bound(op_id, op_bound);
        }
        sat += verify_bound(yt_index, glc->yt_bound);
        sat += verify_bound(yf_index, glc->yf_bound);

        cout << (sat >= 1 ? "GLC SATISFIED" : "GLC NOT SATISFIED") << "(" << sat
             << "):" << endl;
        if (glc->yt_bound > 0) cout << "+ [YT >= " << glc->yt_bound << "]";
        if (glc->yf_bound > 0) cout << "+ [YF >= " << glc->yf_bound << "]";
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            cout << " + [" << ops[op_id].get_name() << " >= " << op_bound
                 << "]";
        }
        cout << " >= 1" << endl;
    }

    shared_ptr<vector<vector<int>>> bounds_literals;
    shared_ptr<IloEnv> env;
    shared_ptr<IloModel> model;
    shared_ptr<IloNumVarArray> x;
    shared_ptr<IloRangeArray> c;
    shared_ptr<IloObjective> obj;
    shared_ptr<IloCplex> cplex;
    shared_ptr<vector<lp::LPVariable>> lp_variables;
    shared_ptr<vector<lp::LPConstraint>> lp_constraints;

    CacheOperatorCounts cache_op_counts;
    CacheGLCs cache_glcs;

    double original_z;
    vector<double> original_x;
    long rounded_z;
    OperatorCount rounded_x;
    bool found_in_cache;
    shared_ptr<SequenceInfo> info;
    IloExpr cut_sat, cut_astar;
    vector<Plan> optimal_plans;

    Shared(const Options &opts, shared_ptr<TaskProxy> task_proxy,
           shared_ptr<AbstractTask> task);
    void extract_sol(IloCplex::ControlCallbackI *callback);
    void extract_sol();
    bool test_card();
    void sequence();
    shared_ptr<SequenceInfo> get_minimal_sequence();
    shared_ptr<SequenceInfo> get_two_sequence();
    shared_ptr<SequenceInfo> get_best_sequence();
    shared_ptr<SequenceInfo> get_sat_sequence();
    shared_ptr<SequenceInfo> get_astar_sequence();
    IloExpr get_cut(shared_ptr<GLC> learned_glc,
                    IloCplex::ControlCallbackI *callback);
    IloExpr get_cut(shared_ptr<GLC> learned_glc);
    void log(IloCplex::ControlCallbackI *callback, CallbackType type);
    void log();
    void post_best_plan(IloCplex::HeuristicCallbackI *callback);

    OperatorCount plan2opcount(Plan plan);
    long opcount2cost(OperatorCount &op_count);
    long plan2cost(Plan &plan);
    double get_op_cost(OperatorProxy op);
    void step_mip_loop();
    void step_sat_loop();
};

struct LazyCallbackI : public IloCplex::LazyConstraintCallbackI {
    shared_ptr<Shared> shr;

    ILOCOMMONCALLBACKSTUFF(LazyCallback)
    LazyCallbackI(shared_ptr<Shared> shr)
        : IloCplex::LazyConstraintCallbackI(*shr->env), shr(shr) {}
    void main();
};
IloCplex::Callback LazyCallback(shared_ptr<Shared> shr);

struct UserCutCallbackI : public IloCplex::UserCutCallbackI {
    shared_ptr<Shared> shr;

    ILOCOMMONCALLBACKSTUFF(UserCutCallback)
    UserCutCallbackI(shared_ptr<Shared> shr)
        : IloCplex::UserCutCallbackI(*shr->env), shr(shr) {}
    void main();
};
IloCplex::Callback UserCutCallback(shared_ptr<Shared> shr);

struct HeuristicCallbackI : public IloCplex::HeuristicCallbackI {
    shared_ptr<Shared> shr;

    ILOCOMMONCALLBACKSTUFF(HeuristicCallback)
    HeuristicCallbackI(shared_ptr<Shared> shr)
        : IloCplex::HeuristicCallbackI(*shr->env), shr(shr) {}
    void main();
};
IloCplex::Callback HeuristicCallback(shared_ptr<Shared> shr);





struct EmptyLazyCallbackI : public IloCplex::LazyConstraintCallbackI {
    shared_ptr<Shared> shr;
    
    ILOCOMMONCALLBACKSTUFF(EmptyLazyCallback)
    EmptyLazyCallbackI(shared_ptr<Shared> shr) 
        : IloCplex::LazyConstraintCallbackI(*shr->env), shr(shr) {}
    void main() {
        cout << "CALLING EMPTY LAZY CALLBACK" << endl;
    }
};
IloCplex::Callback EmptyLazyCallback(shared_ptr<Shared> shr);

struct EmptyUserCutCallbackI : public IloCplex::UserCutCallbackI {
    shared_ptr<Shared> shr;
    
    ILOCOMMONCALLBACKSTUFF(EmptyUserCutCallback)
    EmptyUserCutCallbackI(shared_ptr<Shared> shr) 
        : IloCplex::UserCutCallbackI(*shr->env), shr(shr) {}
    void main() {
        cout << "CALLING EMPTY USERCUT CALLBACK" << endl;
    }
};
IloCplex::Callback EmptyUserCutCallback(shared_ptr<Shared> shr);

struct EmptyHeuristicCallbackI : public IloCplex::HeuristicCallbackI {
    shared_ptr<Shared> shr;
    
    ILOCOMMONCALLBACKSTUFF(EmptyHeuristicCallback)
    EmptyHeuristicCallbackI(shared_ptr<Shared> shr) 
        : IloCplex::HeuristicCallbackI(*shr->env), shr(shr) {}
    void main() {
        cout << "CALLING EMPTY HEURISTIC CALLBACK" << endl;
    }
};
IloCplex::Callback EmptyHeuristicCallback(shared_ptr<Shared> shr);


#endif

#ifndef BENDERS_H
#define BENDERS_H

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
#include "../task_utils/successor_generator.h"

#include "../heuristics/lm_cut_landmarks.h"
#include "../operator_counting/lm_cut_constraints.h"
#include "astar_search.h"

#include "Florian/delete_relaxation_constraints.h"
#include "Florian/flow_constraints.h"
#include "dynamic_merging.h"
#include "glc.h"
#include "printer_plots.h"
#include "seq_constraints.h"

#include <chrono>
#include <map>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

using lm_cut_heuristic::LandmarkCutLandmarks;
using operator_counting::ConstraintGenerator;
using operator_counting::LMCutConstraints;
using OperatorCount = vector<int>;
using SequenceInfo = tuple<bool, shared_ptr<GLC>, Plan, int>;

using namespace std;

class Evaluator;
class Heuristic;

namespace options {
class Options;
}

struct CacheOperatorCounts {
    struct Hash {
        size_t operator()(const unordered_map<int, int>& v) const {
            size_t key = v.size();
            for (auto& i : v) {
                key ^= ((i.first + 1) * (i.second + 1)) + 0x9e3779b9 +
                       (key << 6) + (key >> 2);
            }
            return key;
        }
    };

    unordered_map<unordered_map<int, int>, SequenceInfo, Hash> cache;

    int count(OperatorCount& op_count) {
        return this->cache.count(this->convert(op_count));
    }

    SequenceInfo operator[](OperatorCount& op_count) {
        return this->cache[this->convert(op_count)];
    }

    void add(OperatorCount op_count, SequenceInfo info) {
        this->cache[this->convert(op_count)] = info;
    }

    unordered_map<int, int> convert(OperatorCount& op_count) {
        unordered_map<int, int> map_op_count;
        for (size_t op_id = 0; op_id < op_count.size(); ++op_id) {
            if (op_count[op_id] > 0) {
                map_op_count[op_id] = op_count[op_id];
            }
        }
        return map_op_count;
    }
};

struct Benders {
    int constraint_type;
    bool use_seq_constraints;
    bool use_lmcut_constraints;
    bool use_dynamic_merging_constraints;
    bool use_delete_relaxation_constraints;
    bool use_flow_constraints;
    bool use_sequencing_cache;
    bool print_current_oc;
    bool print_learned_constraints;
    bool print_lp_changes;
    bool print_search_tree;
    int max_seqs;
    shared_ptr<Evaluator> eval;
    lp::LPSolverType lp_solver_type;
    int cost_type;
    double max_time;
    int bound;
    shared_ptr<PruningMethod> pruning;
    int verbosity;

    shared_ptr<TaskProxy> task_proxy;
    shared_ptr<AbstractTask> task;
    chrono::time_point<chrono::system_clock> start;

    bool restart = false;
    int restarts = 0, seq = 0, repeated_seqs = 0;
    double infinity = IloInfinity;
    int n_ops, n_vars;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<PrinterPlots> printer_plots;

    vector<lp::LPVariable> lp_variables;
    vector<lp::LPConstraint> lp_constraints;
    vector<vector<int>> bounds_literals;
    vector<pair<int, int>> c23_ops;

    CacheOperatorCounts cache_op_counts;

    IloEnv env;
    IloModel model;
    IloNumVarArray x;
    IloRangeArray c;
    IloObjective obj;
    IloCplex cplex;

    Benders(const Options& opts, TaskProxy& task_proxy,
            shared_ptr<AbstractTask> task, int k_prealloc_bounds = 2);
    void initialize();
    pair<int, IloExpr> get_cut(shared_ptr<GLC> learned_glc);
    void get_domain_constraints(int op_id, int current_bound,
                                int previous_bound);
    pair<bool, SequenceInfo> get_sequence(int h_oc, OperatorCount op_count);
    void update_and_prints(int seq, double original_lp_h_oc, int lp_h_oc,
                           vector<double> original_solution,
                           OperatorCount rounded_solution);
    void fn_print_current_oc(int seq, double original_lp_h_oc, int lp_h_oc,
                             vector<double>& original_solution,
                             OperatorCount& rounded_solution);
    void fn_print_learned_constraints(int seq,
                                      vector<double>& original_solution);
};

#endif

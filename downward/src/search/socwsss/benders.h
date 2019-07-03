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
#include "delete_relaxation_constraints.h"
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

using namespace std;

class Evaluator;
class Heuristic;

namespace options {
class Options;
}

struct HashOpCount {
    size_t operator()(const vector<int>& v) const {
        size_t key = v.size();
        for (auto& i : v) {
            key ^= i + 0x9e3779b9 + (key << 6) + (key >> 2);
        }
        return key;
    }
};

class Benders {
   public:
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
    StateRegistry& state_registry;

    bool restart = false;
    int restarts = 0, seq = 0, repeated_sequencings = 0;
    double infinity = IloInfinity;
    int n_ops, n_vars;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<PrinterPlots> printer_plots;
    int gen_var_ids = 0;
    int yt_index;
    vector<lp::LPVariable> all_lp_variables;
    vector<lp::LPConstraint> all_lp_constraints;
    vector<int> new_lp_variables;
    vector<int> new_lp_constraints;
    vector<int> updated_lp_constraints;
    vector<vector<int>> bounds_literals;
    vector<tuple<int, int>> c23_ops;

    unordered_map<vector<int>,
                  tuple<bool, vector<shared_ptr<GLC>>, Plan, double>,
                  HashOpCount>
        all_op_counts;

    IloEnv env;
    IloModel model;
    IloNumVarArray x;
    IloRangeArray c;
    IloObjective obj;
    IloCplex cplex;

    Benders(const Options& opts, TaskProxy& task_proxy,
            shared_ptr<AbstractTask> task, StateRegistry& state_registry);
    void initialize();
    tuple<int, vector<IloExpr>> get_cuts(vector<shared_ptr<GLC>>& learned_glcs);
    void update_and_prints(int seq, double original_lp_h_oc, int lp_h_oc,
                           vector<double> original_solution,
                           vector<int> rounded_solution,
                           vector<shared_ptr<GLC>> last_learned_glcs);
    void get_domain_constraints(int op_id, int current_bound,
                                int previous_bound);
    tuple<bool, vector<shared_ptr<GLC>>, Plan, int> get_sequence(
        int h_oc, vector<int> op_count);
    void fn_print_lp_changes(int seq);
    void fn_print_current_oc(int seq, double original_lp_h_oc, int lp_h_oc,
                             vector<double>& original_solution,
                             vector<int>& rounded_solution);
    void fn_print_learned_constraints(int seq,
                                      vector<double>& original_solution);
};

#endif

#ifndef SEARCH_ENGINES_SOCWSSS_SEARCH_H
#define SEARCH_ENGINES_SOCWSSS_SEARCH_H

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

#include "../heuristics/lm_cut_landmarks.h"
#include "../operator_counting/lm_cut_constraints.h"

#include "astar_search.h"
#include "dynamic_merging.h"
#include "glc.h"
#include "printer_plots.h"

#include "seq_constraints.h"

#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <memory>
#include <utility>

using namespace std;
using lm_cut_heuristic::LandmarkCutLandmarks;
using operator_counting::ConstraintGenerator;
using operator_counting::LMCutConstraints;

class Evaluator;
class Heuristic;

namespace options {
class Options;
}

namespace SOCWSSS_search {

struct SOCWSSSSearch : public SearchEngine {
    // Attributes from command line to SOCWSSS and SearchEngine
    lp::LPSolverType lp_solver_type;
    bool mip;
    int constraint_type;
    bool get_op_count_from_bounds;
    bool print_current_oc;
    bool print_learned_constraints;
    bool print_lp_changes;
    bool print_search_tree;
    bool dynamic_merging;
    int max_seqs;
    int max_time_to_solve;
    double max_mem_to_solve;
    shared_ptr<Evaluator> eval;
    int cost_type;
    double max_time;
    int bound;
    shared_ptr<PruningMethod> pruning;
    int verbosity;

    // Other custom attributes
    double infinity;
    int seq;
    int h_oc;
    int n_ops = task_proxy.get_operators().size();
    int n_vars = task_proxy.get_variables().size();
    int yt_index;
    vector<int> op_count;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    shared_ptr<GLC> last_learned_glc;
    double total_solve_time;
    int best_bound_found = 0;
    shared_ptr<PrinterPlots> printer_plots;

    vector<lp::LPVariable> all_lp_variables;
    vector<lp::LPConstraint> all_lp_constraints;

    vector<int> new_lp_variables;
    vector<int> new_lp_constraints;

    vector<int> updated_lp_constraints;

    Plan best_plan_so_far;
    int cost_best_plan_so_far = numeric_limits<int>::max();

    // Map bounds literals to ids
    vector<vector<int>> bounds_literals;
    // Generator for variables ids
    int gen_var_ids = 0;
    // Store constraints (2) e (3) for each operator
    vector<pair<int, int>> c23_ops;

    virtual void initialize() override;
    virtual SearchStatus step() override;

    void get_op_count();
    SearchStatus get_sequence();
    void get_domain_constraints(int op_id, int current_bound,
                                int previous_bound);
    void fn_print_lp_changes();
    void fn_print_current_oc(int lp_h_oc, int rounded_h_oc,
                             vector<double> &original_solution,
                             vector<int> &rounded_solution);
    void fn_print_learned_constraints(vector<double> &original_solution);
    void fn_get_op_count_from_bounds(vector<double> &original_solution,
                                     vector<int> &rounded_solution);

    explicit SOCWSSSSearch(const options::Options &opts);
    virtual ~SOCWSSSSearch() = default;

    virtual void print_statistics() const override;
};
}  // namespace SOCWSSS_search

#endif

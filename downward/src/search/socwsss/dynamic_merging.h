#ifndef DYNAMIC_MERGING_H
#define DYNAMIC_MERGING_H

#include "../lp/lp_solver.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_utils/task_properties.h"
#include "../utils/markup.h"

//#include "../operator_counting/constraint_generator.h"
#include "../heuristics/lm_cut_landmarks.h"
//#include "../operator_counting/lm_cut_constraints.h"
//#include "../operator_counting/state_equation_constraints.h"
//#include "../operator_counting/pho_constraints.h"
//#include "../pdbs/pattern_collection_generator_systematic.h"

using namespace std;

class TaskProxy;

// using operator_counting::ConstraintGenerator;
using lm_cut_heuristic::LandmarkCutLandmarks;
// using operator_counting::LMCutConstraints;
// using operator_counting::StateEquationConstraints;
// using operator_counting::PhOConstraints;
// using pdbs::PatternCollectionGenerator;
// using pdbs::PatternCollectionGeneratorSystematic;

namespace options {
class Options;
}

/* A proposition is an atom of the form Var = Val. It stores the index of the
   constraint representing it in the LP */
struct Proposition {
    int constraint_index;
    set<int> always_produced_by;
    set<int> sometimes_produced_by;
    set<int> always_consumed_by;
    set<int> sometimes_consumed_by;

    Proposition() : constraint_index(-1) {}
    ~Proposition() = default;
};

struct DynamicMerging {
    vector<lp::LPVariable> lp_variables;
    vector<lp::LPConstraint> lp_constraints;
    vector<vector<vector<int>>> copies;
    vector<tuple<int, int, int, int>> merges;  // indexed by merge_id
    set<tuple<int, int, int, int>> merges_set;
    vector<int> ids_flow_constraints;  // indexed by merge_id

    // vector<shared_ptr<ConstraintGenerator>> constraint_generators;
    lp::LPSolverType lp_solver_type;
    shared_ptr<TaskProxy> task_proxy;
    double infinity;
    int lp_variables_offset, lp_constraints_offset;
    vector<vector<int>> prevails, pres, posts;
    vector<vector<int>> consumers, producers;
    vector<vector<int>> potential_consumers, potential_producers;
    int fixed_variables, fixed_constraints;
    vector<int> initial_state, goal_state;
    vector<vector<bool>> is_goal_mutex;
    vector<vector<Proposition>> propositions;
    vector<bool> has_incomplete_actions;
    vector<bool> is_safe;
    bool use_safety_improvement;
    bool use_only_upper_bounds;

    void goal_reformulation();
    void add_indices_to_constraint(lp::LPConstraint &constraint,
                                   const set<int> &indices, double coefficient);
    void initialize_seq_constraints();
    bool update_seq_constraints(const State &state, lp::LPSolver &lp_solver);
    void compute_has_incomplete_actions();
    void compute_goal_mutexes();
    void get_prevails_pres_posts();
    void dynamic_merging();
    vector<double> solve_lp();
    void explicate_merges();
    vector<int> create_dtg(int var_id, int var_val, int ovar_id, int ovar_val);
    void create_link_constraints();
    void create_flow_constraints();

    DynamicMerging(lp::LPSolverType lp_solver_type,
                   shared_ptr<TaskProxy> task_proxy, double infinity,
                   int lp_variables_offset, int lp_constraints_offset,
                   bool use_safety_improvement = true,
                   bool use_only_upper_bounds = false);
};

#endif

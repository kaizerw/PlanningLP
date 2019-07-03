#include "oc_plus_hmax_search.h"

#include "../evaluation_context.h"
#include "../heuristic.h"
#include "../open_list_factory.h"
#include "../option_parser.h"
#include "../pruning_method.h"
#include "../heuristic.h"

#include "../algorithms/ordered_set.h"
#include "../task_utils/successor_generator.h"

#include "smart_exploration.cpp"

using namespace std;
using woperator_counting::WConstraintGenerator;

namespace oc_plus_hmax_search {
OcPlusHmaxSearch::OcPlusHmaxSearch(const Options &opts)
    : SearchEngine(opts),
      constraint_generators(opts.get_list<shared_ptr<WConstraintGenerator>>("constraint_generators")),
      lp_solver_type(lp::LPSolverType(opts.get_enum("lpsolver"))),
      mip(opts.get<bool>("mip")),
      print_current_oc(opts.get<bool>("print_current_oc")),
      print_generalized_constraints(opts.get<bool>("print_generalized_constraints")),
      print_constraints(opts.get<bool>("print_constraints")),
      use_only_basic_constraint(opts.get<bool>("use_only_basic_constraint")),
      increment_op_counts(opts.get<bool>("increment_op_counts")),
      discover_action_landmarks(opts.get<bool>("discover_action_landmarks")),
      use_intersect_action_landmarks(opts.get<bool>("use_intersect_action_landmarks")),
      max_iter(opts.get<int>("max_iter")){
}

void OcPlusHmaxSearch::initialize() {
    cout << "Initializing OcPlusHMax search..." << endl;
}

SearchStatus OcPlusHmaxSearch::step() {
    vector<lp::LPVariable> initial_variables;
    vector<lp::LPConstraint> initial_constraints;

    // Construct a dummy lp solver to get its infinity
    this->lp_solver_type = lp_solver_type;
    this->infinity = lp::LPSolver(lp_solver_type).get_infinity();

    // Create initial variables for LP
    for (OperatorProxy op : task_proxy.get_operators()) {
        double lower_bound = 0;
        double upper_bound = infinity;
        double objective_coefficient = op.get_cost();
        initial_variables.push_back(lp::LPVariable(lower_bound, upper_bound, objective_coefficient, mip));
    }

    // Create initial constraints for LP
    for (const auto &generator : constraint_generators) {
        generator->initialize_constraints(task, initial_constraints, infinity);
    }

    SmartExploration smart_exploration(task_proxy.get_initial_state(),
                                       task_proxy.get_goals(),
                                       task_proxy.get_operators(),
                                       initial_variables,
                                       initial_constraints,
                                       constraint_generators,
                                       lp_solver_type,
                                       mip,
                                       print_current_oc,
                                       print_generalized_constraints,
                                       print_constraints,
                                       use_only_basic_constraint,
                                       increment_op_counts,
                                       discover_action_landmarks,
                                       use_intersect_action_landmarks,
                                       max_iter);

    if (smart_exploration() == SOLVED) {
        set_plan(smart_exploration.plan);
        return SOLVED;
    }
    return FAILED;
}
}

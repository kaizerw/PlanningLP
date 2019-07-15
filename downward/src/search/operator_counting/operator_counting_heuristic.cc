#include "operator_counting_heuristic.h"

#include "constraint_generator.h"

#include "../option_parser.h"
#include "../plugin.h"

#include "../utils/markup.h"
#include "../utils/timer.h"

#include <cmath>

using namespace std;

namespace operator_counting {
OperatorCountingHeuristic::OperatorCountingHeuristic(const Options &opts)
    : Heuristic(opts),
      constraint_generators(
          opts.get_list<shared_ptr<ConstraintGenerator>>("constraint_generators")),
      lp_solver(lp::LPSolverType(opts.get_enum("lpsolver"))),
      use_integer_op_counts(opts.get<bool>("use_integer_op_counts")),
      num_integral_solutions(0),
      num_fractional_solutions(0),
      num_integral_objective_values(0) {
    cout << "LP peak memory before construct: " << utils::get_peak_memory_in_kb() << endl;
    vector<lp::LPVariable> variables;
    double infinity = lp_solver.get_infinity();
    for (OperatorProxy op : task_proxy.get_operators()) {
        int op_cost = op.get_cost();
        variables.push_back(lp::LPVariable(0, infinity, op_cost, use_integer_op_counts));
    }
    vector<lp::LPConstraint> constraints;
    for (auto generator : constraint_generators) {
        generator->initialize_constraints(task, variables, constraints, infinity);
    }

    cout << "LP variables: " << variables.size() << endl;
    cout << "LP constraints: " << constraints.size() << endl;

    // HACK
    if (constraints.empty()) {
        // add trivial constraint to work around bug in OSI
        lp::LPConstraint dummy(0, infinity);
        for (OperatorProxy op : task_proxy.get_operators()) {
            dummy.insert(op.get_id(), 1);
        }
        constraints.push_back(dummy);
    }


    cout << "LP peak memory before load: " << utils::get_peak_memory_in_kb() << endl;
    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, variables, constraints);
    cout << "LP peak memory before solve: " << utils::get_peak_memory_in_kb() << endl;
}

int OperatorCountingHeuristic::compute_heuristic(const GlobalState &global_state) {
    State state = convert_global_state(global_state);
    return compute_heuristic(state);
}

int OperatorCountingHeuristic::compute_heuristic(const State &state) {
    assert(!lp_solver.has_temporary_constraints());
    for (auto generator : constraint_generators) {
        bool dead_end = generator->update_constraints(state, lp_solver);
        if (dead_end) {
            lp_solver.clear_temporary_constraints();
            return DEAD_END;
        }
    }
    int result;

    utils::Timer solve_time;
    lp_solver.solve();

    static bool first = true;
    if (first) {
        cout << "LP solve time: " << solve_time << endl;
        cout << "LP peak memory after solve: " << utils::get_peak_memory_in_kb() << endl;

        first = false;
    }

    if (lp_solver.has_optimal_solution()) {
        double epsilon = 0.01;
        double objective_value = lp_solver.get_objective_value();
        result = ceil(objective_value - epsilon);

        if (lp_solver.is_solution_integral()) {
            ++num_integral_solutions;
        } else {
            ++num_fractional_solutions;
        }
        if (abs(objective_value - round(objective_value)) < epsilon) {
            ++num_integral_objective_values;
        }
        if (num_integral_solutions + num_fractional_solutions == 1) {
            cout << "integral solution (initial): " << num_integral_solutions << endl;
            cout << "integral objective (initial): " << num_integral_objective_values << endl;
            cout << "fractional solution (initial): " << num_fractional_solutions << endl;
        }
        if ((num_integral_solutions + num_fractional_solutions) % 1000 == 0) {
            int k = (num_integral_solutions + num_fractional_solutions) / 1000;
            if (k < 4) {
                cout << "integral solution (" << k << "k expansions): "
                     << num_integral_solutions << endl;
                cout << "integral objective (" << k << "k expansions): "
                     << num_integral_objective_values << endl;
                cout << "fractional solution (" << k << "k expansions): "
                     << num_fractional_solutions << endl;
            }
        }
    } else {
        result = DEAD_END;
    }
    lp_solver.clear_temporary_constraints();
    return result;
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis(
        "Operator counting heuristic",
        "An operator counting heuristic computes a linear program (LP) in each "
        "state. The LP has one variable Count_o for each operator o that "
        "represents how often the operator is used in a plan. Operator "
        "counting constraints are linear constraints over these varaibles that "
        "are guaranteed to have a solution with Count_o = occurrences(o, pi) "
        "for every plan pi. Minimizing the total cost of operators subject to "
        "some operator counting constraints is an admissible heuristic. ");

    parser.document_language_support("action costs", "supported");
    parser.document_language_support(
        "conditional effects",
        "not supported (the heuristic supports them in theory, but none of "
        "the currently implemented constraint generators do)");
    parser.document_language_support(
        "axioms",
        "not supported (the heuristic supports them in theory, but none of "
        "the currently implemented constraint generators do)");
    parser.document_property("admissible", "yes");
    parser.document_property(
        "consistent",
        "yes, if all constraint generators represent consistent heuristics");
    parser.document_property("safe", "yes");
    // TODO: prefer operators that are non-zero in the solution.
    parser.document_property("preferred operators", "no");


    parser.add_list_option<shared_ptr<ConstraintGenerator>>(
        "constraint_generators",
        "methods that generate constraints over operator counting variables");

    parser.add_option<bool>(
        "use_integer_op_counts",
        "operator counting variables will be restricted to integer values",
        "false"
    );

    lp::add_lp_solver_option_to_parser(parser);
    Heuristic::add_options_to_parser(parser);
    Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;
    opts.verify_list_non_empty<shared_ptr<ConstraintGenerator>>(
        "constraint_generators");
    if (parser.dry_run())
        return nullptr;
    return make_shared<OperatorCountingHeuristic>(opts);
}

static Plugin<Evaluator> _plugin("operatorcounting", _parse);
}

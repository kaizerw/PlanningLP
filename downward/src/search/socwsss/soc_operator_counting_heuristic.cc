#include "soc_operator_counting_heuristic.h"

SOCOperatorCountingHeuristic::SOCOperatorCountingHeuristic(const Options &opts)
    : Heuristic(opts),
      constraint_generators(opts.get_list<shared_ptr<ConstraintGenerator>>(
          "constraint_generators")),
      lp_solver(lp::LPSolverType(opts.get_enum("lpsolver"))),
      use_integer_op_counts(opts.get<bool>("use_integer_op_counts")) {
    vector<lp::LPVariable> variables;
    double infinity = lp_solver.get_infinity();
    for (OperatorProxy op : task_proxy.get_operators()) {
        int op_cost = op.get_cost();
        variables.push_back(
            lp::LPVariable(0, infinity, op_cost, use_integer_op_counts));
    }

    vector<lp::LPConstraint> constraints;
    for (auto generator : constraint_generators) {
        generator->initialize_constraints(task, variables, constraints,
                                          infinity);
    }

    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, variables,
                           constraints);
}

int SOCOperatorCountingHeuristic::compute_heuristic(
    const GlobalState &global_state) {
    State state = convert_global_state(global_state);
    vector<int> op_count =
        global_state.get_registry().lookup_op_count(global_state.id);
    return compute_heuristic(state, op_count);
}

int SOCOperatorCountingHeuristic::compute_heuristic(
    const State &state, const vector<int> & /*op_count*/) {
    assert(!lp_solver.has_temporary_constraints());
    for (auto generator : constraint_generators) {
        bool dead_end = generator->update_constraints(state, lp_solver);
        if (dead_end) {
            lp_solver.clear_temporary_constraints();
            return DEAD_END;
        }
    }

    vector<lp::LPConstraint> temp_constraints;

    // Adding all learned GLCs
    int n_ops = task_proxy.get_operators().size();
    for (auto &glc : (*glcs)) {
        int yt_bound = glc->yt_bound;
        int last_yt_bound = (*bounds_literals)[n_ops].size() - 1;

        lp::LPConstraint constraint(1.0, lp_solver.get_infinity());
        if (yt_bound > 0) {
            if (yt_bound <= last_yt_bound) {
                constraint.insert((*bounds_literals)[n_ops][yt_bound], 1.0);
            } else {
                constraint.insert(n_ops, (1.0 / yt_bound));
            }
        }
        for (auto &[op_id, op_bound] : glc->ops_bounds) {
            int last_op_bound = (*bounds_literals)[op_id].size() - 1;

            if (op_bound <= last_op_bound) {
                constraint.insert((*bounds_literals)[op_id][op_bound], 1.0);
            } else {
                constraint.insert(op_id, (1.0 / op_bound));
            }
        }

        temp_constraints.emplace_back(constraint);
    }

    // Add path constraint
    /*
    vector<int> diff_op_count;
    transform(initial_op_count.begin(), initial_op_count.end(),
              op_count.begin(), back_inserter(diff_op_count),
              [](int i, int j) { return i - j; });
    lp::LPConstraint path_constraint(1.0, lp_solver.get_infinity());
    for (int op_id = 0; op_id < n_ops; ++op_id) {
        int diff = diff_op_count[op_id];

        if (diff > 0) {
            path_constraint.insert((*bounds_literals)[op_id][diff], 1.0);
        }
    }
    temp_constraints.emplace_back(path_constraint);
    */

    // Add temp constraints to lp_solver
    lp_solver.add_temporary_constraints(temp_constraints);

    lp_solver.solve();

    int result;
    if (lp_solver.has_optimal_solution()) {
        double epsilon = 0.01;
        double objective_value = lp_solver.get_objective_value();
        result = ceil(objective_value - epsilon);
    } else {
        result = DEAD_END;
    }
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
        "false");

    lp::add_lp_solver_option_to_parser(parser);
    Heuristic::add_options_to_parser(parser);
    Options opts = parser.parse();
    if (parser.help_mode()) return nullptr;
    opts.verify_list_non_empty<shared_ptr<ConstraintGenerator>>(
        "constraint_generators");
    if (parser.dry_run()) return nullptr;
    return make_shared<SOCOperatorCountingHeuristic>(opts);
}

static Plugin<Evaluator> _plugin("socoperatorcounting", _parse);

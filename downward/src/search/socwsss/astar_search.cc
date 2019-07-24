#include "astar_search.h"

namespace soc_astar_search {
SOCAStarSearch::SOCAStarSearch(const Options &opts)
    : EagerSearch(opts),
      initial_op_count(opts.get<OperatorCount>("initial_op_count")),
      initial_n_ops(
          accumulate(initial_op_count.begin(), initial_op_count.end(), 0)),
      f_bound(opts.get<int>("f_bound")),
      constraint_type(opts.get<int>("constraint_type")),
      max_f_found(0),
      ops_learned_constraint(task_proxy.get_operators().size(),
                             (constraint_type == 1)),
      yt_bound(numeric_limits<int>::max()),
      state_registry(task_proxy, true, initial_op_count),
      search_space(state_registry) {
    cout << "Initializing SOC A* search..." << endl;
}

bool SOCAStarSearch::check_goal_and_set_plan(const GlobalState &state) {
    if (task_properties::is_goal_state(task_proxy, state)) {
        cout << "Solution found!" << endl;
        Plan plan;
        search_space.trace_path(state, plan);
        set_plan(plan);
        return true;
    }
    return false;
}

void SOCAStarSearch::initialize() {
    cout << "Conducting best first search"
         << (reopen_closed_nodes ? " with" : " without")
         << " reopening closed nodes, (real) bound = " << bound << endl;
    assert(open_list);

    set<Evaluator *> evals;
    open_list->get_path_dependent_evaluators(evals);

    /*
      Collect path-dependent evaluators that are used for preferred operators
      (in case they are not also used in the open list).
    */
    for (const shared_ptr<Evaluator> &evaluator :
         preferred_operator_evaluators) {
        evaluator->get_path_dependent_evaluators(evals);
    }

    /*
      Collect path-dependent evaluators that are used in the f_evaluator.
      They are usually also used in the open list and will hence already be
      included, but we want to be sure.
    */
    if (f_evaluator) {
        f_evaluator->get_path_dependent_evaluators(evals);
    }

    /*
      Collect path-dependent evaluators that are used in the lazy_evaluator
      (in case they are not already included).
    */
    if (lazy_evaluator) {
        lazy_evaluator->get_path_dependent_evaluators(evals);
    }

    path_dependent_evaluators.assign(evals.begin(), evals.end());

    const GlobalState &initial_state = state_registry.get_initial_state();
    for (Evaluator *evaluator : path_dependent_evaluators) {
        evaluator->notify_initial_state(initial_state);
    }

    /*
      Note: we consider the initial state as reached by a preferred
      operator.
    */
    EvaluationContext eval_context(initial_state, 0, true, &statistics);

    statistics.inc_evaluated_states();

    if (open_list->is_dead_end(eval_context)) {
        cout << "Initial state is a dead end." << endl;
    } else {
        if (search_progress.check_progress(eval_context))
            statistics.print_checkpoint_line(0);
        start_f_value_statistics(eval_context);
        SearchNode node = search_space.get_node(initial_state);
        node.open_initial();

        open_list->insert(eval_context, initial_state.get_id());
    }

    print_initial_evaluator_values(eval_context);

    pruning_method->initialize(task);
}

void SOCAStarSearch::print_statistics() const {
    // statistics.print_detailed_statistics();
    // search_space.print_statistics();
    // pruning_method->print_statistics();
}

SearchStatus SOCAStarSearch::step() {
    tl::optional<SearchNode> node;
    OperatorCount s_op_count;
    while (true) {
        if (open_list->empty()) {
            ////////////////////////////////////////////////////////////////////
            generate_constraint();
            ////////////////////////////////////////////////////////////////////
            cout << "Completely explored state space -- no solution!" << endl;
            return FAILED;
        }
        StateID id = open_list->remove_min();
        // TODO is there a way we can avoid creating the state here and then
        //      recreate it outside of this function with node.get_state()?
        //      One way would be to store GlobalState objects inside SearchNodes
        //      instead of StateIDs
        GlobalState s = state_registry.lookup_state(id);
        s_op_count = state_registry.lookup_op_count(id);
        node.emplace(search_space.get_node(s));

        if (node->is_closed()) continue;

        /*
          We can pass calculate_preferred=false here since preferred
          operators are computed when the state is expanded.
        */
        EvaluationContext eval_context(s, node->get_g(), false, &statistics);

        if (lazy_evaluator) {
            /*
              With lazy evaluators (and only with these) we can have dead nodes
              in the open list.

              For example, consider a state s that is reached twice before it is
              expanded. The first time we insert it into the open list, we
              compute a finite heuristic value. The second time we insert it,
              the cached value is reused.

              During first expansion, the heuristic value is recomputed and
              might become infinite, for example because the reevaluation uses a
              stronger heuristic or because the heuristic is path-dependent and
              we have accumulated more information in the meantime. Then upon
              second expansion we have a dead-end node which we must ignore.
            */
            if (node->is_dead_end()) continue;

            if (lazy_evaluator->is_estimate_cached(s)) {
                int old_h = lazy_evaluator->get_cached_estimate(s);
                int new_h = eval_context.get_evaluator_value_or_infinity(
                    lazy_evaluator.get());
                if (open_list->is_dead_end(eval_context)) {
                    node->mark_as_dead_end();
                    statistics.inc_dead_ends();
                    continue;
                }
                if (new_h != old_h) {
                    open_list->insert(eval_context, id);
                    continue;
                }
            }
        }

        node->close();
        assert(!node->is_dead_end());
        update_f_value_statistics(eval_context);
        statistics.inc_expanded();
        break;
    }

    ////////////////////////////////////////////////////////////////////////////
    // Use f_bound to bound search
    EvaluationContext eval_context2(node->get_state(), node->get_g(), false,
                                    &statistics);
    int node_f = eval_context2.get_evaluator_value(f_evaluator.get());

    node->get_state().dump_pddl();
    cout << "NODE_F=" << node_f << endl;
    cout << "NODE_G=" << node->get_g() << endl;

    if (node_f > f_bound) {
        return IN_PROGRESS;
    }

    // Update max_f_found
    max_f_found = max((double)node_f, max_f_found);
    ////////////////////////////////////////////////////////////////////////////

    GlobalState s = node->get_state();
    if (check_goal_and_set_plan(s)) return SOLVED;

    vector<OperatorID> applicable_ops;
    successor_generator.generate_applicable_ops(s, applicable_ops);

    /*
      TODO: When preferred operators are in use, a preferred operator will be
      considered by the preferred operator queues even when it is pruned.
    */
    pruning_method->prune_operators(s, applicable_ops);

    // This evaluates the expanded state (again) to get preferred ops
    EvaluationContext eval_context(s, node->get_g(), false, &statistics, true);
    ordered_set::OrderedSet<OperatorID> preferred_operators;
    for (const shared_ptr<Evaluator> &preferred_operator_evaluator :
         preferred_operator_evaluators) {
        collect_preferred_operators(eval_context,
                                    preferred_operator_evaluator.get(),
                                    preferred_operators);
    }

    for (OperatorID op_id : applicable_ops) {
        OperatorProxy op = task_proxy.get_operators()[op_id];
        if ((node->get_real_g() + op.get_cost()) >= bound) continue;

        GlobalState succ_state = state_registry.get_successor_state(s, op);

        statistics.inc_generated();
        bool is_preferred = preferred_operators.contains(op_id);

        SearchNode succ_node = search_space.get_node(succ_state);

        for (Evaluator *evaluator : path_dependent_evaluators) {
            evaluator->notify_state_transition(s, op_id, succ_state);
        }

        // Previously encountered dead end. Don't re-evaluate.
        if (succ_node.is_dead_end()) continue;

        ////////////////////////////////////////////////////////////////////////
        // If OC(op) == 0 then a new constraint can be learned
        // In this case succ_node won't be added to open list later
        if (s_op_count[op.get_id()] == 0) {
            // 1. Add all operators
            if (constraint_type == 1) {
                // 2. Add operators o that could generate states s' from states
                // s only if s' is a new state
            } else if (constraint_type == 2) {
                if (succ_node.is_new()) {
                    ops_learned_constraint[op.get_id()] = true;
                }
                // 3. Add operators o that could generate states s' from states
                // s only if s' is a new state and f(s') <= f_bound
            } else if (constraint_type == 3) {
                // Calculate new_succ_g and new_succ_f
                int new_succ_g = node->get_g() + get_adjusted_cost(op);
                EvaluationContext eval_context2(succ_node.get_state(),
                                                new_succ_g, false, &statistics);
                int new_succ_f =
                    eval_context2.get_evaluator_value(f_evaluator.get());

                if (succ_node.is_new()) {
                    if (new_succ_f <= f_bound) {
                        ops_learned_constraint[op.get_id()] = true;
                    } else {
                        int used_ops =
                            initial_n_ops -
                            accumulate(s_op_count.begin(), s_op_count.end(), 0);
                        yt_bound = min(yt_bound, used_ops);
                    }
                }
            }

            continue;
        }
        ////////////////////////////////////////////////////////////////////////

        if (succ_node.is_new()) {
            // We have not seen this state before.
            // Evaluate and create a new node.

            // Careful: succ_node.get_g() is not available here yet,
            // hence the stupid computation of succ_g.
            // TODO: Make this less fragile.
            int succ_g = node->get_g() + get_adjusted_cost(op);

            EvaluationContext succ_eval_context(succ_state, succ_g,
                                                is_preferred, &statistics);
            statistics.inc_evaluated_states();

            if (open_list->is_dead_end(succ_eval_context)) {
                succ_node.mark_as_dead_end();
                statistics.inc_dead_ends();
                continue;
            }
            succ_node.open(*node, op, get_adjusted_cost(op));

            open_list->insert(succ_eval_context, succ_state.get_id());
            if (search_progress.check_progress(succ_eval_context)) {
                ////////////////////////////////////////////////////////////////
                // statistics.print_checkpoint_line(succ_node.get_g());
                ////////////////////////////////////////////////////////////////
                reward_progress();
            }
        } else if (succ_node.get_g() > node->get_g() + get_adjusted_cost(op)) {
            // We found a new cheapest path to an open or closed state.
            if (reopen_closed_nodes) {
                if (succ_node.is_closed()) {
                    /*
                      TODO: It would be nice if we had a way to test
                      that reopening is expected behaviour, i.e., exit
                      with an error when this is something where
                      reopening should not occur (e.g. A* with a
                      consistent heuristic).
                    */
                    statistics.inc_reopened();
                }
                succ_node.reopen(*node, op, get_adjusted_cost(op));

                EvaluationContext succ_eval_context(
                    succ_state, succ_node.get_g(), is_preferred, &statistics);

                /*
                  Note: our old code used to retrieve the h value from
                  the search node here. Our new code recomputes it as
                  necessary, thus avoiding the incredible ugliness of
                  the old "set_evaluator_value" approach, which also
                  did not generalize properly to settings with more
                  than one evaluator.

                  Reopening should not happen all that frequently, so
                  the performance impact of this is hopefully not that
                  large. In the medium term, we want the evaluators to
                  remember evaluator values for states themselves if
                  desired by the user, so that such recomputations
                  will just involve a look-up by the Evaluator object
                  rather than a recomputation of the evaluator value
                  from scratch.
                */
                open_list->insert(succ_eval_context, succ_state.get_id());
            } else {
                // If we do not reopen closed nodes, we just update the parent
                // pointers. Note that this could cause an incompatibility
                // between the g-value and the actual path that is traced back.
                succ_node.update_parent(*node, op, get_adjusted_cost(op));
            }
        }
    }

    return IN_PROGRESS;
}

void SOCAStarSearch::generate_constraint() {
    learned_glc = make_shared<GLC>();
    for (size_t op_id = 0; op_id < task_proxy.get_operators().size(); ++op_id) {
        if (ops_learned_constraint[op_id]) {
            learned_glc->add_op_bound(op_id, initial_op_count[op_id] + 1);
        }
    }
    if (yt_bound != numeric_limits<int>::max()) {
        learned_glc->yt_bound = yt_bound + 1;
    }
    if (learned_glc->empty()) {
        learned_glc = nullptr;
    }
}
}  // namespace soc_astar_search

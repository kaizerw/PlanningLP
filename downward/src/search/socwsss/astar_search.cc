#include "astar_search.h"

namespace soc_astar_search {
SOCAStarSearch::SOCAStarSearch(const Options &opts)
    : EagerSearch(opts),
      initial_op_count(opts.get<OperatorCount>("initial_op_count")),
      h_oc(opts.get<int>("h_oc")),
      constraint_type(opts.get<int>("constraint_type")),
      seq(opts.get<int>("seq")),
      print_search_tree(opts.get<bool>("print_search_tree")),
      max_f_found(0),
      ops_learned_constraint(task_proxy.get_operators().size(),
                             (this->constraint_type == 1)),
      yt_learned_constraint(false),
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
            this->generate_constraint();
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
    this->print_node(*node);

    // Use this->h_oc to bound search
    EvaluationContext eval_context2(node->get_state(), node->get_g(), false,
                                    &statistics);
    int node_f = eval_context2.get_evaluator_value(f_evaluator.get());
    if (node_f > this->h_oc) {
        return IN_PROGRESS;
    }

    // Update this->max_f_found
    this->max_f_found = max((double)node_f, this->max_f_found);
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
            if (this->constraint_type == 1) {
                this->print_edge(*node, op, succ_node);
                this->print_node(*node, op, succ_node);
                // 2. Add operators o that could generate states s' from states
                // s only if s' is a new state
            } else if (this->constraint_type == 2) {
                if (succ_node.is_new()) {
                    this->ops_learned_constraint[op.get_id()] = true;
                    this->print_edge(*node, op, succ_node);
                    this->print_node(*node, op, succ_node);
                }
                // 3. Add operators o that could generate states s' from states
                // s only if s' is a new state and f(s') <= h_oc
            } else if (this->constraint_type == 3) {
                // Calculate new_succ_g and new_succ_f
                int new_succ_g = node->get_g() + get_adjusted_cost(op);
                EvaluationContext eval_context2(succ_node.get_state(),
                                                new_succ_g, false, &statistics);
                int new_succ_f =
                    eval_context2.get_evaluator_value(f_evaluator.get());

                if (succ_node.is_new()) {
                    if (new_succ_f <= this->h_oc) {
                        this->ops_learned_constraint[op.get_id()] = true;
                        this->print_edge(*node, op, succ_node);
                        this->print_node(*node, op, succ_node);
                    } else {
                        this->yt_learned_constraint = true;
                    }
                }
            }

            continue;
        }

        if (succ_node.is_new() ||
            succ_node.get_g() > node->get_g() + get_adjusted_cost(op)) {
            this->print_edge(*node, op, succ_node);
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
    this->learned_glc = make_shared<GLC>();
    for (size_t op_id = 0; op_id < task_proxy.get_operators().size(); ++op_id) {
        if (this->ops_learned_constraint[op_id]) {
            this->learned_glc->add_op_bound(op_id,
                                            this->initial_op_count[op_id] + 1);
        }
    }
    if (this->yt_learned_constraint ||
        this->learned_glc->ops_bounds.size() == 0) {
        this->learned_glc->yt_bound =
            accumulate(this->initial_op_count.begin(),
                       this->initial_op_count.end(), 0) +
            1;
    }
}

void SOCAStarSearch::print_node(SearchNode &node) {
    if (this->print_search_tree) {
        int node_g = node.get_g();
        EvaluationContext eval_context_node(node.get_state(), node_g, false,
                                            &statistics);
        int node_f = eval_context_node.get_evaluator_value(f_evaluator.get());

        cout << "%%" << endl;
        cout << "SEQ: " << this->seq << endl;
        cout << "NODE: " << node.get_state_id() << endl;
        bool fully_expanded = this->is_fully_expanded(node);

        if (task_properties::is_goal_state(task_proxy, node.get_state())) {
            cout << "COLOR: green" << endl << endl;
        } else if (node_f > this->h_oc) {
            cout << "COLOR: gray" << endl << endl;
            cout << "N3" << endl << endl;
        } else {
            cout << "COLOR: " << (fully_expanded ? "blue" : "yellow") << endl
                 << endl;
            cout << "N" << (fully_expanded ? "1" : "2") << endl << endl;
        }

        cout << "FACTS:" << endl;
        VariablesProxy vars = task_proxy.get_variables();
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int var_val = node.get_state()[var_id];
            cout << vars[var_id].get_fact(var_val).get_name() << endl;
        }
        cout << endl
             << "G: " << node_g << "\tF: " << node_f << "\tMIP: " << this->h_oc
             << endl
             << endl;

        cout << "APPLICABLE OPS:" << endl;
        vector<OperatorID> appops;
        successor_generator.generate_applicable_ops(node.get_state(), appops);

        GlobalState node_state =
            state_registry.lookup_state(node.get_state_id());
        OperatorCount node_op_count =
            state_registry.lookup_op_count(node.get_state_id());

        for (OperatorID appop : appops) {
            cout << task_proxy.get_operators()[appop.get_index()].get_name();
            cout << " x" << node_op_count[appop.get_index()] << endl;
        }

        cout << endl << "ACTION LANDMARKS:" << endl;
        for (int op_id : this->compute_action_landmarks(node.get_state())) {
            cout << task_proxy.get_operators()[op_id].get_name();
            int oc = node_op_count[op_id];
            cout << " x" << oc << endl;
        }

        if (node.get_state_id() ==
            state_registry.get_initial_state().get_id()) {
            cout << endl << "MIP PRIMAL:" << endl;
            for (size_t op_id = 0; op_id < task_proxy.get_operators().size();
                 ++op_id) {
                if (this->initial_op_count[op_id] > 0) {
                    cout << task_proxy.get_operators()[op_id].get_name() << " x"
                         << this->initial_op_count[op_id] << endl;
                }
            }
        }

        cout << "%%" << endl;
    }
}

void SOCAStarSearch::print_node(SearchNode &node, OperatorProxy &op,
                                SearchNode &succ_node) {
    if (this->print_search_tree) {
        int new_succ_g = node.get_g() + get_adjusted_cost(op);
        EvaluationContext eval_context2(succ_node.get_state(), new_succ_g,
                                        false, &statistics);
        int new_succ_f = eval_context2.get_evaluator_value(f_evaluator.get());
        vector<OperatorID> appops;
        successor_generator.generate_applicable_ops(succ_node.get_state(),
                                                    appops);

        cout << "%%" << endl;
        cout << "SEQ: " << this->seq << endl;
        cout << "NODE: " << succ_node.get_state_id() << endl;
        cout << "COLOR: red" << endl << endl;
        cout << "N4" << endl << endl;

        cout << "FACTS:" << endl;
        VariablesProxy vars = task_proxy.get_variables();
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int var_val = succ_node.get_state()[var_id];
            cout << vars[var_id].get_fact(var_val).get_name() << endl;
        }
        cout << endl
             << "G: " << new_succ_g << "\tF: " << new_succ_f
             << "\tMIP: " << this->h_oc << endl
             << endl;

        GlobalState node_state =
            state_registry.lookup_state(node.get_state_id());
        OperatorCount node_op_count =
            state_registry.lookup_op_count(node.get_state_id());

        cout << "APPLICABLE OPS:" << endl;
        for (OperatorID appop : appops) {
            cout << task_proxy.get_operators()[appop.get_index()].get_name();
            int oc = node_op_count[appop.get_index()];
            if (appop.get_index() == op.get_id()) {
                cout << " x" << (oc - 1) << endl;
            } else {
                cout << " x" << oc << endl;
            }
        }

        cout << endl << "ACTION LANDMARKS:" << endl;
        for (int op_id :
             this->compute_action_landmarks(succ_node.get_state())) {
            cout << task_proxy.get_operators()[op_id].get_name();
            int oc = node_op_count[op_id];
            if (op_id == op.get_id()) {
                cout << " x" << (oc - 1) << endl;
            } else {
                cout << " x" << oc << endl;
            }
        }
        cout << "%%" << endl;
    }
}

void SOCAStarSearch::print_edge(SearchNode &node, OperatorProxy &op,
                                SearchNode &succ_node) {
    if (this->print_search_tree) {
        cout << "%%" << endl;
        cout << "SEQ: " << this->seq << endl;
        cout << "EDGE: " << op.get_name() << " (" << op.get_cost() << ")"
             << endl;
        if (state_registry.lookup_op_count(node.get_state_id())[op.get_id()] >
            0) {
            cout << "COLOR: blue" << endl;
        } else {
            cout << "COLOR: red" << endl;
        }
        cout << "FROM: " << node.get_state_id() << endl;
        cout << "TO: " << succ_node.get_state_id() << endl;
        cout << "%%" << endl;
    }
}

bool SOCAStarSearch::is_fully_expanded(SearchNode &node) {
    vector<OperatorID> appops;
    successor_generator.generate_applicable_ops(node.get_state(), appops);

    bool fully_expanded = true;
    for (OperatorID appop : appops) {
        OperatorProxy op = task_proxy.get_operators()[appop];
        GlobalState succ_state =
            state_registry.get_successor_state(node.get_state(), op);
        SearchNode succ_node = search_space.get_node(succ_state);

        if (state_registry.lookup_op_count(
                node.get_state_id())[appop.get_index()] == 0 &&
            (succ_node.is_new() ||
             succ_node.get_g() > node.get_g() + get_adjusted_cost(op))) {
            fully_expanded = false;
            break;
        }
    }
    return fully_expanded;
}

vector<int> SOCAStarSearch::compute_action_landmarks(const GlobalState &state) {
    vector<int> action_landmarks;

    vector<bool> valid_operators(task_proxy.get_operators().size(), true);
    for (OperatorProxy op : task_proxy.get_operators()) {
        valid_operators[op.get_id()] = false;

        Options oc_hmax_opts;
        oc_hmax_opts.set("cache_estimates", true);
        oc_hmax_opts.set("transform", this->task);
        oc_hmax_opts.set("valid_operators", valid_operators);
        SOCHMaxHeuristic oc_hmax(oc_hmax_opts);

        if (oc_hmax.compute_heuristic(state) == -1) {
            action_landmarks.emplace_back(op.get_id());
        }

        valid_operators[op.get_id()] = true;
    }

    return action_landmarks;
}
}  // namespace soc_astar_search

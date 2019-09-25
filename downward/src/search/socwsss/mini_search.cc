#include "mini_search.h"

MiniSearch::MiniSearch(const Options &opts)
    : EagerSearch(opts),
      state(opts.get<GlobalState>("state")),
      state_registry(task_proxy),
      search_space(state_registry) {}

bool MiniSearch::check_goal_and_set_plan(const GlobalState &state) {
    if (task_properties::is_goal_state(task_proxy, state)) {
        cout << "Solution found!" << endl;
        Plan plan;
        search_space.trace_path(state, plan);
        set_plan(plan);

        plan_cost = 0;
        for (OperatorID op_id : plan) {
            plan_cost +=
                task_proxy.get_operators()[op_id.get_index()].get_cost();
        }

        return true;
    }
    return false;
}

void MiniSearch::initialize() {
    assert(open_list);

    set<Evaluator *> evals;
    open_list->get_path_dependent_evaluators(evals);

    for (const shared_ptr<Evaluator> &evaluator :
         preferred_operator_evaluators) {
        evaluator->get_path_dependent_evaluators(evals);
    }

    if (f_evaluator) {
        f_evaluator->get_path_dependent_evaluators(evals);
    }

    if (lazy_evaluator) {
        lazy_evaluator->get_path_dependent_evaluators(evals);
    }

    path_dependent_evaluators.assign(evals.begin(), evals.end());

    const GlobalState &initial_state = state_registry.get_initial_state(state);
    for (Evaluator *evaluator : path_dependent_evaluators) {
        evaluator->notify_initial_state(initial_state);
    }

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

void MiniSearch::print_statistics() const {}

SearchStatus MiniSearch::step() {
    tl::optional<SearchNode> node;
    while (true) {
        if (open_list->empty()) {
            cout << "Completely explored state space -- no solution!" << endl;
            return FAILED;
        }
        StateID id = open_list->remove_min();
        GlobalState s = state_registry.lookup_state(id);
        node.emplace(search_space.get_node(s));

        if (node->is_closed()) continue;

        EvaluationContext eval_context(s, node->get_g(), false, &statistics);

        if (lazy_evaluator) {
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

    GlobalState s = node->get_state();
    if (check_goal_and_set_plan(s)) return SOLVED;

    vector<OperatorID> applicable_ops;
    successor_generator.generate_applicable_ops(s, applicable_ops);

    pruning_method->prune_operators(s, applicable_ops);

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

        if (succ_node.is_dead_end()) continue;

        if (succ_node.is_new()) {
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
                reward_progress();
            }
        } else if (succ_node.get_g() > node->get_g() + get_adjusted_cost(op)) {
            if (reopen_closed_nodes) {
                if (succ_node.is_closed()) {
                    statistics.inc_reopened();
                }
                succ_node.reopen(*node, op, get_adjusted_cost(op));

                EvaluationContext succ_eval_context(
                    succ_state, succ_node.get_g(), is_preferred, &statistics);

                open_list->insert(succ_eval_context, succ_state.get_id());
            } else {
                succ_node.update_parent(*node, op, get_adjusted_cost(op));
            }
        }
    }

    return IN_PROGRESS;
}

size_t CacheHStar::Hash::operator()(const vector<int> &v) const {
    size_t key = v.size();
    for (size_t i = 0; i < v.size(); ++i) {
        key ^= ((i + 1) * (max(v[i], -1) + 1)) + 0x9e3779b9 + (key << 6) +
               (key >> 2);
    }
    return key;
}

CacheHStar::CacheHStar(const Options &opts, TaskProxy &task_proxy)
    : opts(opts), task_proxy(task_proxy) {}

int CacheHStar::operator[](GlobalState state) {
    vector<int> values;
    for (size_t i = 0; i < task_proxy.get_variables().size(); ++i) {
        values.emplace_back(state[i]);
    }

    if (cache.count(values) == 0) {
        Options options(opts);
        options.set("state", state);
        cout.setstate(ios_base::failbit);
        MiniSearch minisearch(options);
        minisearch.search();
        cout.clear();
        cache[values] = minisearch.plan_cost;
    }
    return cache[values];
}
#include "delete_relaxation_constraints.h"

DeleteRelaxationConstraints::DeleteRelaxationConstraints(
    shared_ptr<TaskProxy> task_proxy, shared_ptr<AbstractTask> task,
    lp::LPSolverType lp_solver_type, double infinity, int n_ops,
    StateRegistry& state_registry)
    : task_proxy(task_proxy),
      task(task),
      lp_solver_type(lp_solver_type),
      infinity(infinity),
      n_ops(n_ops),
      state_registry(state_registry) {}

void DeleteRelaxationConstraints::operator()() {
    VariablesProxy vars = this->task_proxy->get_variables();
    OperatorsProxy ops = this->task_proxy->get_operators();

    vector<int> initial_state(vars.size(), -1);
    for (FactProxy init : this->task_proxy->get_initial_state()) {
        int var_id = init.get_variable().get_id();
        initial_state[var_id] = init.get_value();
    }

    vector<int> goal_state(vars.size(), -1);
    for (FactProxy goal : this->task_proxy->get_goals()) {
        int var_id = goal.get_variable().get_id();
        goal_state[var_id] = goal.get_value();
    }

    vector<vector<int>> pres, adds;
    vector<set<pair<int, int>>> dels;
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        const OperatorProxy& op = ops[op_id];

        vector<int> pre(vars.size(), -1);
        for (FactProxy condition : op.get_preconditions()) {
            int var_id = condition.get_variable().get_id();
            pre[var_id] = condition.get_value();
        }

        vector<int> add(vars.size(), -1);
        for (EffectProxy effect_proxy : op.get_effects()) {
            FactProxy effect = effect_proxy.get_fact();
            int var_id = effect.get_variable().get_id();
            add[var_id] = effect.get_value();
        }

        set<pair<int, int>> del;
        for (EffectProxy effect_proxy : op.get_effects()) {
            FactProxy effect = effect_proxy.get_fact();
            int var_id = effect.get_variable().get_id();
            int var_val = effect.get_value();
            if (pre[var_id] != -1) {
                del.emplace(var_id, pre[var_id]);
            } else {
                int domain_size =
                    this->task_proxy->get_variables()[var_id].get_domain_size();
                for (int other_val = 0; other_val < domain_size; ++other_val) {
                    if (other_val != var_val) {
                        del.emplace(var_id, other_val);
                    }
                }
            }
        }

        pres.push_back(pre);
        adds.push_back(add);
        dels.push_back(del);
    }

    vector<set<pair<int, int>>> predels;
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        set<pair<int, int>> predel;

        for (pair<int, int> del : dels[op_id]) {
            int var_id, var_val;
            tie(var_id, var_val) = del;
            if (pres[op_id][var_id] == var_val) {
                predel.emplace(var_id, var_val);
            }
        }

        predels.push_back(predel);
    }

    vector<pair<int, int>> facts;
    for (VariableProxy var : vars) {
        for (int val = 0; val < var.get_domain_size(); ++val) {
            facts.emplace_back(var.get_id(), val);
        }
    }

    map<string, int> names_to_ids;
    int id = 0;

    vector<lp::LPVariable> variables;

    cout << "proposition" << endl;
    // proposition: forall p in P, U(p) in {0, 1}
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        variables.push_back(lp::LPVariable(0, 1, 0, true));
        names_to_ids["Up(" + to_string(var_id) + "," + to_string(var_val) +
                     ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    cout << "action" << endl;
    // action: forall a in A, U(a) in {0, 1}
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        variables.push_back(lp::LPVariable(0, 1, 0, true));
        names_to_ids["Ua(" + to_string(op_id) + ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    cout << "add effect" << endl;
    // add effect: forall a in A, forall p in add(a), E(a, p) in {0, 1}
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int add_val = adds[op_id][var_id];
            if (add_val != -1) {
                variables.push_back(lp::LPVariable(0, 1, 0, true));
                names_to_ids["E(" + to_string(op_id) + "," + to_string(var_id) +
                             "," + to_string(add_val) + ")"] = id++;
                cout << "\t" << variables.back().lower_bound << " "
                     << variables.back().upper_bound << " "
                     << variables.back().objective_coefficient << endl;
            }
        }
    }

    cout << "time (proposition)" << endl;
    // time (proposition): forall p in P, T(p) in {0, ..., |A|}
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        variables.push_back(lp::LPVariable(0, this->n_ops, 0, true));
        names_to_ids["Tp(" + to_string(var_id) + "," + to_string(var_val) +
                     ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    cout << "time (action)" << endl;
    // time (action): forall a in A, T(a) in {0, ..., |A| - 1}
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        variables.push_back(lp::LPVariable(0, this->n_ops - 1, 0, true));
        names_to_ids["Ta(" + to_string(op_id) + ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    cout << "initial proposition" << endl;
    // initial proposition: forall p in P, I(p) in {0, 1}
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        variables.push_back(lp::LPVariable(0, 1, 0, true));
        names_to_ids["I(" + to_string(var_id) + "," + to_string(var_val) +
                     ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    vector<lp::LPConstraint> constraints;

    cout << "initial proposition" << endl;
    // initial proposition: I(p) = 1 iff p in I
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;
        int k = (initial_state[var_id] == var_val);

        lp::LPConstraint c(k, k);
        c.insert(names_to_ids["I(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 1);
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    cout << "1." << endl;
    // 1. forall p in G, U(p) = 1
    for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
        int goal_val = goal_state[var_id];
        if (goal_val != -1) {
            lp::LPConstraint c(1, 1);
            c.insert(names_to_ids["Up(" + to_string(var_id) + "," +
                                  to_string(goal_val) + ")"],
                     1);
            constraints.push_back(c);

            cout << "\t" << c.get_lower_bound() << " <= ";
            for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
                cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                     << " ";
            }
            cout << "<= " << c.get_upper_bound() << endl;
        }
    }

    cout << "2." << endl;
    // 2. forall a in A, forall p in pre(a), U(p) >= U(a)
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int pre_val = pres[op_id][var_id];
            if (pre_val != -1) {
                lp::LPConstraint c(0, this->infinity);
                c.insert(names_to_ids["Up(" + to_string(var_id) + "," +
                                      to_string(pre_val) + ")"],
                         1);
                c.insert(names_to_ids["Ua(" + to_string(op_id) + ")"], -1);
                constraints.push_back(c);

                cout << "\t" << c.get_lower_bound() << " <= ";
                for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
                    cout << c.get_coefficients()[i] << " * "
                         << c.get_variables()[i] << " ";
                }
                cout << "<= " << c.get_upper_bound() << endl;
            }
        }
    }

    cout << "3." << endl;
    // 3. forall a in A, forall p in add(a), U(a) >= E(a, p)
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int add_val = adds[op_id][var_id];
            if (add_val != -1) {
                lp::LPConstraint c(0, this->infinity);
                c.insert(names_to_ids["Ua(" + to_string(op_id) + ")"], 1);
                c.insert(names_to_ids["E(" + to_string(op_id) + "," +
                                      to_string(var_id) + "," +
                                      to_string(add_val) + ")"],
                         -1);
                constraints.push_back(c);

                cout << "\t" << c.get_lower_bound() << " <= ";
                for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
                    cout << c.get_coefficients()[i] << " * "
                         << c.get_variables()[i] << " ";
                }
                cout << "<= " << c.get_upper_bound() << endl;
            }
        }
    }

    cout << "4." << endl;
    // 4. forall p in P, I(p) + sum(E(a, p), a in A s.t. p in add(a)) >= U(p)
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        lp::LPConstraint c(0, this->infinity);
        c.insert(names_to_ids["I(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 1);
        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            if (adds[op_id][var_id] == var_val) {
                c.insert(names_to_ids["E(" + to_string(op_id) + "," +
                                      to_string(var_id) + "," +
                                      to_string(var_val) + ")"],
                         1);
            }
        }
        c.insert(names_to_ids["Up(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 -1);
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    cout << "5." << endl;
    // 5. forall a in A, forall p in pre(a), T(p) <= T(a)
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int pre_val = pres[op_id][var_id];
            if (pre_val != -1) {
                lp::LPConstraint c(0, this->infinity);
                c.insert(names_to_ids["Ta(" + to_string(op_id) + ")"], 1);
                c.insert(names_to_ids["Tp(" + to_string(var_id) + "," +
                                      to_string(pre_val) + ")"],
                         -1);
                constraints.push_back(c);

                cout << "\t" << c.get_lower_bound() << " <= ";
                for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
                    cout << c.get_coefficients()[i] << " * "
                         << c.get_variables()[i] << " ";
                }
                cout << "<= " << c.get_upper_bound() << endl;
            }
        }
    }

    cout << "6." << endl;
    // 6. forall a in A, forall p in add(a), T(a) + 1 <= T(p) + (|A| + 1)(1 -
    // E(a, p))
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        for (size_t var_id = 0; var_id < vars.size(); ++var_id) {
            int add_val = adds[op_id][var_id];
            if (add_val != -1) {
                lp::LPConstraint c(-this->n_ops, this->infinity);
                c.insert(names_to_ids["Tp(" + to_string(var_id) + "," +
                                      to_string(add_val) + ")"],
                         1);
                c.insert(names_to_ids["E(" + to_string(op_id) + "," +
                                      to_string(var_id) + "," +
                                      to_string(add_val) + ")"],
                         -(this->n_ops + 1));
                c.insert(names_to_ids["Ta(" + to_string(op_id) + ")"], -1);
                constraints.push_back(c);

                cout << "\t" << c.get_lower_bound() << " <= ";
                for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
                    cout << c.get_coefficients()[i] << " * "
                         << c.get_variables()[i] << " ";
                }
                cout << "<= " << c.get_upper_bound() << endl;
            }
        }
    }

    // Counting constraints
    cout << "Counting constraints:" << endl;
    cout << "N(a)" << endl;
    // N(a): forall a in A, N(a) in {0, ...}
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        // change obj_coeff to zero after tests
        variables.push_back(
            lp::LPVariable(0, this->infinity, ops[op_id].get_cost(), true));
        names_to_ids["N(" + to_string(op_id) + ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    cout << "G(p)" << endl;
    // G(p): forall p in P, G(p) in {0, 1}
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        variables.push_back(lp::LPVariable(0, 1, 0, true));
        names_to_ids["G(" + to_string(var_id) + "," + to_string(var_val) +
                     ")"] = id++;
        cout << "\t" << variables.back().lower_bound << " "
             << variables.back().upper_bound << " "
             << variables.back().objective_coefficient << endl;
    }

    cout << "G(p)" << endl;
    // G(p): forall p in P, G(p) = 1 iff p in G
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        int k = (goal_state[var_id] == var_val);

        lp::LPConstraint c(k, k);
        c.insert(names_to_ids["G(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 1);
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    cout << "7." << endl;
    // 7. forall a in A, N(a) >= U(a)
    for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
        lp::LPConstraint c(0, this->infinity);
        c.insert(names_to_ids["N(" + to_string(op_id) + ")"], 1);
        c.insert(names_to_ids["Ua(" + to_string(op_id) + ")"], -1);
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    cout << "8." << endl;
    // 8. forall p in P, G(p) + sum(N(a), p in predel(a)) <= I(p) + sum(N(a),
    // p in add(a))
    for (pair<int, int> fact : facts) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        lp::LPConstraint c(0, this->infinity);
        c.insert(names_to_ids["I(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 1);
        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            if (adds[op_id][var_id] == var_val) {
                c.insert(names_to_ids["N(" + to_string(op_id) + ")"], 1);
            }
        }

        c.insert(names_to_ids["G(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 -1);
        for (size_t op_id = 0; op_id < ops.size(); ++op_id) {
            if (predels[op_id].count(make_pair(var_id, var_val)) > 0) {
                c.insert(names_to_ids["N(" + to_string(op_id) + ")"], -1);
            }
        }
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    // Action landmarks
    cout << "action landmarks" << endl;
    for (int op_id : this->compute_action_landmarks()) {
        lp::LPConstraint c(1, 1);
        c.insert(names_to_ids["Ua(" + to_string(op_id) + ")"], 1);
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    // Fact landmarks
    cout << "fact landmarks" << endl;
    for (pair<int, int> fact : this->compute_fact_landmarks()) {
        int var_id, var_val;
        tie(var_id, var_val) = fact;

        lp::LPConstraint c(1, 1);
        c.insert(names_to_ids["Up(" + to_string(var_id) + "," +
                              to_string(var_val) + ")"],
                 1);
        constraints.push_back(c);

        cout << "\t" << c.get_lower_bound() << " <= ";
        for (size_t i = 0; i < c.get_coefficients().size(); ++i) {
            cout << c.get_coefficients()[i] << " * " << c.get_variables()[i]
                 << " ";
        }
        cout << "<= " << c.get_upper_bound() << endl;
    }

    lp::LPSolver lp_solver(this->lp_solver_type);

    lp_solver.load_problem(lp::LPObjectiveSense::MINIMIZE, variables,
                           constraints);

    lp_solver.solve_mip();

    int lp_h_oc;
    vector<double> original_solution;
    if (lp_solver.has_optimal_solution()) {
        lp_h_oc = round(lp_solver.get_objective_value());
        original_solution = lp_solver.extract_solution();
    } else {
        cout << "INFEASIBLE" << endl;
        exit(-1);
        lp_h_oc = -1;
        original_solution =
            vector<double>(this->task_proxy->get_operators().size(), 0);
    }

    cout << "Z: " << lp_h_oc << endl;
    vector<pair<int, string>> inv_names_to_ids;
    for (pair<string, int> item : names_to_ids) {
        inv_names_to_ids.push_back(make_pair(item.second, item.first));
    }
    auto comp1 = [](pair<int, string> i, pair<int, string> j) {
        return i.first < j.first;
    };
    sort(inv_names_to_ids.begin(), inv_names_to_ids.end(), comp1);
    for (pair<int, string> item : inv_names_to_ids) {
        cout << "\t" << item.first << " " << item.second << " "
             << original_solution[item.first] << endl;
    }

    vector<tuple<int, int>> relaxed_plan;
    for (OperatorProxy op : ops) {
        if (original_solution[names_to_ids["Ua(" + to_string(op.get_id()) +
                                           ")"]] == 1) {
            relaxed_plan.push_back(make_tuple(
                op.get_id(),
                original_solution[names_to_ids["Ta(" + to_string(op.get_id()) +
                                               ")"]]));
        }
    }
    auto comp2 = [](tuple<int, int> i, tuple<int, int> j) {
        return get<1>(i) < get<1>(j);
    };
    sort(relaxed_plan.begin(), relaxed_plan.end(), comp2);
    cout << "relaxed plan:" << endl;
    for (tuple<int, int> item : relaxed_plan) {
        cout << "\t" << ops[get<0>(item)].get_name() << " " << get<1>(item)
             << endl;
    }

    exit(-1);
}

vector<int> DeleteRelaxationConstraints::compute_action_landmarks() {
    vector<int> action_landmarks;

    cout.setstate(ios_base::failbit);

    vector<bool> valid_operators(this->task_proxy->get_operators().size(),
                                 true);
    for (OperatorProxy op : this->task_proxy->get_operators()) {
        valid_operators[op.get_id()] = false;

        Options oc_hmax_opts;
        oc_hmax_opts.set("cache_estimates", true);
        oc_hmax_opts.set("transform", this->task);
        oc_hmax_opts.set("valid_operators", valid_operators);
        SOCHMaxHeuristic oc_hmax(oc_hmax_opts);

        if (oc_hmax.compute_heuristic(
                this->state_registry.get_initial_state()) == -1) {
            action_landmarks.push_back(op.get_id());
        }

        valid_operators[op.get_id()] = true;
    }

    cout.clear();

    return action_landmarks;
}

vector<pair<int, int>> DeleteRelaxationConstraints::compute_fact_landmarks() {
    vector<pair<int, int>> fact_landmarks;

    cout.setstate(ios_base::failbit);

    Options opts;
    opts.set("m", 2);
    opts.set("reasonable_orders", false);
    opts.set("only_causal_landmarks", false);
    opts.set("disjunctive_landmarks", false);
    opts.set("conjunctive_landmarks", false);
    opts.set("no_orders", false);
    LandmarkFactoryHM lm_factory(opts);
    shared_ptr<LandmarkGraph> lm_graph =
        lm_factory.compute_lm_graph(this->task);

    for (int lm_id = 0; lm_id < lm_graph->number_of_landmarks(); ++lm_id) {
        LandmarkNode* lm = lm_graph->get_lm_for_index(lm_id);
        for (FactPair fact : lm->facts) {
            fact_landmarks.emplace_back(fact.var, fact.value);
        }
    }

    cout.clear();

    return fact_landmarks;
}

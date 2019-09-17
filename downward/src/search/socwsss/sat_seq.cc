#include "sat_seq.h"

/*
// Test PlanToMinisat
// simplegripper/prob01.pddl
vector<int> op_counts({0, 1, 0, 1, 1, 1, 1, 0, 1, 0});
PlanToMinisat(make_shared<TaskProxy>(task_proxy), op_counts)();
exit(0);
*/

MinisatSolver::MinisatSolver(vector<vector<int>> base,
                             vector<vector<int>> assumptions) {
    this->base = base;
    transform(assumptions.begin(), assumptions.end(),
              back_inserter(this->assumptions), [](auto i) { return i[0]; });

    for (vector<int>& cl : base) {
        add_cl(cl);
    }
}

void MinisatSolver::declare_vars(const int max_id) {
    while (solver.nVars() < max_id + 1) {
        solver.newVar();
    }
}

void MinisatSolver::iterate(vector<int>& obj, Minisat22::vec<Minisat22::Lit>& v,
                            int& max_var) {
    for (int l : obj) {
        v.push((l > 0) ? Minisat22::mkLit(l, false)
                       : Minisat22::mkLit(-l, true));

        if (abs(l) > max_var) {
            max_var = abs(l);
        }
    }
}

void MinisatSolver::add_cl(vector<int>& obj) {
    Minisat22::vec<Minisat22::Lit> cl;
    int max_var = -1;

    iterate(obj, cl, max_var);

    if (max_var > 0) {
        declare_vars(max_var);
    }

    solver.addClause(cl);
}

bool MinisatSolver::solve() {
    Minisat22::vec<Minisat22::Lit> a;
    int max_var = -1;

    iterate(assumptions, a, max_var);

    if (max_var > 0) {
        declare_vars(max_var);
    }

    return solver.solve(a);
}

vector<int> MinisatSolver::get_core() {
    Minisat22::vec<Minisat22::Lit>* c = &(solver.conflict);
    vector<int> ret;
    for (int i = 0; i < c->size(); ++i) {
        int l = Minisat22::var((*c)[i]) * (Minisat22::sign((*c)[i]) ? 1 : -1);
        ret.emplace_back(l);
    }
    return ret;
}

vector<int> MinisatSolver::get_model() {
    Minisat22::vec<Minisat22::lbool>* m = &(solver.model);

    Minisat22::lbool True = Minisat22::lbool((uint8_t)0);

    vector<int> ret;
    for (int i = 1; i < m->size(); ++i) {
        int l = i * ((*m)[i] == True ? 1 : -1);
        ret.emplace_back(l);
    }
    return ret;
}

PlanToMinisat::PlanToMinisat(shared_ptr<TaskProxy> task_proxy,
                             vector<long>& op_counts)
    : task_proxy(task_proxy),
      op_counts(op_counts),
      n_layers(accumulate(op_counts.begin(), op_counts.end(), 0)) {
    ops = make_shared<OperatorsProxy>(task_proxy->get_operators());
    vars = make_shared<VariablesProxy>(task_proxy->get_variables());

    initial_state = vector<int>(vars->size(), -1);
    for (FactProxy init : task_proxy->get_initial_state()) {
        int var_id = init.get_variable().get_id();
        initial_state[var_id] = init.get_value();
    }

    goal_state = vector<int>(vars->size(), -1);
    for (FactProxy goal : task_proxy->get_goals()) {
        int var_id = goal.get_variable().get_id();
        goal_state[var_id] = goal.get_value();
    }

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        const OperatorProxy& op = (*ops)[op_id];

        vector<int> pre(vars->size(), -1);
        for (FactProxy condition : op.get_preconditions()) {
            int var_id = condition.get_variable().get_id();
            pre[var_id] = condition.get_value();
        }

        vector<int> post(vars->size(), -1);
        for (EffectProxy effect_proxy : op.get_effects()) {
            FactProxy effect = effect_proxy.get_fact();
            int var_id = effect.get_variable().get_id();
            post[var_id] = effect.get_value();
        }

        pres.push_back(pre);
        posts.push_back(post);
    }

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        int domain_size = (*vars)[var_id].get_domain_size();
        prods.emplace_back(vector<vector<int>>(domain_size, vector<int>({})));
        for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
            int post_val = posts[op_id][var_id];

            if (post_val != -1) {
                prods[var_id][post_val].emplace_back(op_id);
            }
        }
    }

    initialize_ids();
    initialize_assumptions();
}

void PlanToMinisat::initialize_ids() {
    for (int l = 1; l <= n_layers; ++l) {
        for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
            stringstream key;
            key << "op[" << op_id << "," << l << "]";
            int id = id_generator;

            operators_to_ids[key.str()] = id;
            ids_to_operators[id] = key.str();

            all_to_ids[key.str()] = id;
            ids_to_all[id] = key.str();
            ids_to_assumptions_pairs[id] = {op_id, l};

            id_generator++;
        }
    }

    for (int l = 0; l <= n_layers; l++) {
        for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
            int domain_size = (*vars)[var_id].get_domain_size();
            for (int var_val = 0; var_val < domain_size; ++var_val) {
                stringstream key;
                key << "fact[" << var_id << "," << var_val << "," << l << "]";
                int id = id_generator;

                facts_to_ids[key.str()] = id;
                ids_to_facts[id] = key.str();

                all_to_ids[key.str()] = id;
                ids_to_all[id] = key.str();

                id_generator++;
            }
        }
    }
}

void PlanToMinisat::initialize_assumptions() {
    stringstream key;
    key << "[Y_T >= " << (n_layers + 1) << "]";
    int id = id_generator;

    assumptions_to_ids[key.str()] = id;
    ids_to_assumptions[id] = key.str();

    all_to_ids[key.str()] = id;
    ids_to_all[id] = key.str();
    ids_to_assumptions_pairs[id] = {-1, (n_layers + 1)};

    id_generator++;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        stringstream key;
        key << "[op(" << op_id << ") >= " << (op_counts[op_id] + 1) << "]";
        int id = id_generator;

        assumptions_to_ids[key.str()] = id;
        ids_to_assumptions[id] = key.str();

        all_to_ids[key.str()] = id;
        ids_to_all[id] = key.str();
        ids_to_assumptions_pairs[id] = {op_id, (op_counts[op_id] + 1)};

        id_generator++;
    }
}

int PlanToMinisat::s(int i, int j) {
    tuple<int, int> key(i, j);
    if (aux_vars.count(key) == 0) {
        aux_vars[key] = id_generator++;
    }
    return aux_vars[key];
}

vector<vector<int>> PlanToMinisat::encode_bcc(map<int, int>& x, int k) {
    int n = x.size();

    if (k == 0) {
        vector<vector<int>> clauses;
        for (int i = 1; i <= n; ++i) {
            clauses.emplace_back(initializer_list<int>({-x[i]}));
        }
        return clauses;
    }

    vector<vector<int>> clauses({{-x[1], s(1, 1)}});

    for (int j = 2; j <= k; ++j) {
        clauses.emplace_back(initializer_list<int>({-s(1, j)}));
    }

    for (int i = 2; i < n; ++i) {
        clauses.emplace_back(initializer_list<int>({-x[i], s(i, 1)}));
        clauses.emplace_back(initializer_list<int>({-s(i - 1, 1), s(i, 1)}));
        for (int j = 2; j <= k; ++j) {
            clauses.emplace_back(
                initializer_list<int>({-x[i], -s(i - 1, j - 1), s(i, j)}));
            clauses.emplace_back(
                initializer_list<int>({-s(i - 1, j), s(i, j)}));
        }
        clauses.emplace_back(initializer_list<int>({-x[i], -s(i - 1, k)}));
    }

    clauses.emplace_back(initializer_list<int>({-x[n], -s(n - 1, k)}));

    aux_vars.clear();

    return clauses;
}

vector<vector<int>> PlanToMinisat::do_part1(int l) {
    if (l == 0) {
        return {};
    }

    map<int, int> x;
    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        stringstream key;
        key << "op[" << op_id << "," << l << "]";
        x[op_id + 1] = operators_to_ids[key.str()];
    }

    return encode_bcc(x, 1);
}

vector<vector<int>> PlanToMinisat::do_part2(int l) {
    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        map<int, int> x;
        for (int var_val = 0; var_val < (*vars)[var_id].get_domain_size();
             ++var_val) {
            stringstream key;
            key << "fact[" << var_id << "," << var_val << "," << l << "]";
            int fact_id = facts_to_ids[key.str()];
            x[var_val + 1] = fact_id;
        }
        vector<vector<int>> clauses = encode_bcc(x, 1);
        copy(clauses.begin(), clauses.end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part3(int l) {
    if (l != 0) {
        return {};
    }

    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        int var_val = initial_state[var_id];

        if (var_val != -1) {
            stringstream key;
            key << "fact[" << var_id << "," << var_val << "," << 0 << "]";

            int fact_id = facts_to_ids[key.str()];
            encoded.emplace_back(initializer_list<int>({fact_id}));
        } else {
            int domain_size = (*vars)[var_id].get_domain_size();
            for (int var_val = 0; var_val < domain_size; ++var_val) {
                stringstream key;
                key << "fact[" << var_id << "," << var_val << "," << 0 << "]";

                int fact_id = facts_to_ids[key.str()];
                encoded.emplace_back(initializer_list<int>({-fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part4(int l) {
    if (l == 0) {
        return {};
    }

    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        stringstream op_key;
        op_key << "op[" << op_id << "," << l << "]";
        for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
            int var_val = pres[op_id][var_id];
            if (var_val != -1) {
                stringstream fact_key;
                fact_key << "fact[" << var_id << "," << var_val << ","
                         << (l - 1) << "]";
                int op_id = operators_to_ids[op_key.str()];
                int fact_id = facts_to_ids[fact_key.str()];
                encoded.emplace_back(initializer_list<int>({-op_id, fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part5(int l) {
    if (l == 0) {
        return {};
    }

    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        stringstream op_key;
        op_key << "op[" << op_id << "," << l << "]";
        for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
            int var_val = posts[op_id][var_id];
            if (var_val != -1) {
                stringstream fact_key;
                fact_key << "fact[" << var_id << "," << var_val << "," << l
                         << "]";
                int op_id = operators_to_ids[op_key.str()];
                int fact_id = facts_to_ids[fact_key.str()];
                encoded.emplace_back(initializer_list<int>({-op_id, fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part6(int l) {
    if (l == n_layers) {
        return {};
    }

    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        for (int var_val = 0; var_val < (*vars)[var_id].get_domain_size();
             ++var_val) {
            stringstream fact1_key, fact2_key;
            fact1_key << "fact[" << var_id << "," << var_val << "," << (l + 1)
                      << "]";
            fact2_key << "fact[" << var_id << "," << var_val << "," << l << "]";
            int fact1_id = facts_to_ids[fact1_key.str()];
            int fact2_id = facts_to_ids[fact2_key.str()];

            vector<int> clause({-fact1_id, fact2_id});
            for (int op_id : prods[var_id][var_val]) {
                stringstream op_key;
                op_key << "op[" << op_id << "," << (l + 1) << "]";
                op_id = operators_to_ids[op_key.str()];
                clause.push_back(op_id);
            }
            encoded.push_back(clause);
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part7(int l) {
    if (l != n_layers) {
        return {};
    }

    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        int var_val = goal_state[var_id];
        if (var_val != -1) {
            stringstream fact_key;
            fact_key << "fact[" << var_id << "," << var_val << "," << n_layers
                     << "]";
            int fact_id = facts_to_ids[fact_key.str()];

            stringstream assumption_key;
            assumption_key << "[Y_T >= " << (n_layers + 1) << "]";
            int assumption_id = assumptions_to_ids[assumption_key.str()];

            encoded.emplace_back(
                initializer_list<int>({fact_id, assumption_id}));
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part8(int l) {
    if (l != n_layers) {
        return {};
    }

    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        map<int, int> x;
        for (int l = 1; l <= n_layers; ++l) {
            stringstream op_key;
            op_key << "op[" << op_id << "," << l << "]";
            x[l] = operators_to_ids[op_key.str()];
        }

        int k = op_counts[op_id];
        vector<vector<int>> clause = encode_bcc(x, k);

        stringstream key;
        key << "[op(" << op_id << ") >= " << (k + 1) << "]";
        int assumption_id = assumptions_to_ids[key.str()];
        for (vector<int>& c : clause) {
            c.push_back(assumption_id);
        }

        copy(clause.begin(), clause.end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::convert() {
    vector<vector<int>> encoded;

    for (int l = 0; l <= n_layers; ++l) {
        part1[l] = do_part1(l);
        part2[l] = do_part2(l);
        part3[l] = do_part3(l);
        part4[l] = do_part4(l);
        part5[l] = do_part5(l);
        part6[l] = do_part6(l);
        part7[l] = do_part7(l);
        part8[l] = do_part8(l);

        copy(part1[l].begin(), part1[l].end(), back_inserter(encoded));
        copy(part2[l].begin(), part2[l].end(), back_inserter(encoded));
        copy(part3[l].begin(), part3[l].end(), back_inserter(encoded));
        copy(part4[l].begin(), part4[l].end(), back_inserter(encoded));
        copy(part5[l].begin(), part5[l].end(), back_inserter(encoded));
        copy(part6[l].begin(), part6[l].end(), back_inserter(encoded));
        copy(part7[l].begin(), part7[l].end(), back_inserter(encoded));
        copy(part8[l].begin(), part8[l].end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::get_assumptions() {
    vector<vector<int>> assumptions;
    for (pair<int, string> a : ids_to_assumptions) {
        assumptions.emplace_back(initializer_list<int>({-a.first}));
    }
    return assumptions;
}

void PlanToMinisat::make_minisat_input(vector<vector<int>> encoded,
                                       string filename) {
    ofstream file(filename);
    if (file.is_open()) {
        vector<int> m;
        auto fn = [](vector<int> i) {
            auto fn = [](int i, int j) { return abs(i) < abs(j); };
            return *max_element(i.begin(), i.end(), fn);
        };
        transform(encoded.begin(), encoded.end(), back_inserter(m), fn);
        int n_vars = *max_element(m.begin(), m.end());
        int n_clauses = encoded.size();
        file << "p cnf " << n_vars << " " << n_clauses << endl;
        for (vector<int>& clause : encoded) {
            for (int c : clause) {
                file << c << " ";
            }
            file << "0" << endl;
        }
    }
    file.close();
}

void PlanToMinisat::save_file(vector<vector<int>> encoded, string filename) {
    ofstream file(filename);
    if (file.is_open()) {
        for (vector<int>& clause : encoded) {
            for (int c : clause) {
                file << c << " ";
            }
            file << endl;
        }
    }
    file.close();
}

string PlanToMinisat::tos(vector<vector<int>> encoded) {
    stringstream file;
    for (vector<int>& clause : encoded) {
        for (int c : clause) {
            file << c << " ";
        }
        file << endl;
    }
    return file.str();
}

string PlanToMinisat::format(vector<vector<int>> part) {
    string formula;

    for (vector<int>& clause : part) {
        string clause_str;

        for (int var_id : clause) {
            string var_name;
            if (var_id < 0) {
                var_name = "~";
                var_id = abs(var_id);
            }
            if (ids_to_all.count(var_id) > 0) {
                var_name += ids_to_all[var_id];
            } else {
                var_name += "Aux" + to_string(var_id);
            }

            clause_str += var_name + " | ";
        }

        formula += clause_str + "\n\t";
    }

    return formula;
}

string PlanToMinisat::print() {
    string r;
    int line_size = 80;

    r += string(line_size, '*') + "\n";
    r += "TASK IN SAT:\n";

    for (int l = 0; l <= n_layers; ++l) {
        r += string(line_size, '*');
        r += "\nLAYER " + to_string(l) + ":\n";

        r += "\nPART 1:\n\t" + format(part1[l]) + "\n";
        r += "\nPART 2:\n\t" + format(part2[l]) + "\n";
        r += "\nPART 3:\n\t" + format(part3[l]) + "\n";
        r += "\nPART 4:\n\t" + format(part4[l]) + "\n";
        r += "\nPART 5:\n\t" + format(part5[l]) + "\n";
        r += "\nPART 6:\n\t" + format(part6[l]) + "\n";
        r += "\nPART 7:\n\t" + format(part7[l]) + "\n";
        r += "\nPART 8:\n\t" + format(part8[l]) + "\n";

        r += string(line_size, '*') + "\n";
    }

    r += string(line_size, '*') + "\n";

    return r;
}

string PlanToMinisat::exec(const char* cmd) {
    array<char, 128> buffer;
    string result;
    unique_ptr<FILE, decltype(&pclose)> pipe(popen(cmd, "r"), pclose);
    if (!pipe) {
        throw runtime_error("popen() failed!");
    }
    while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
        result += buffer.data();
    }
    return result;
}

void PlanToMinisat::operator()() {
    vector<vector<int>> base = convert();
    vector<vector<int>> assumptions = get_assumptions();

    MinisatSolver solver(base, assumptions);

    sequenciable = solver.solve();
    if (sequenciable) {
        vector<pair<int, int>> used_ops;
        for (int v : solver.get_model()) {
            if (v >= 0 && ids_to_assumptions_pairs.find(v) !=
                              ids_to_assumptions_pairs.end()) {
                auto [op_id, layer] = ids_to_assumptions_pairs[v];
                used_ops.emplace_back(op_id, layer);
            }
        }

        auto fn1 = [](auto i, auto j) { return i.second < j.second; };
        sort(used_ops.begin(), used_ops.end(), fn1);
        auto fn2 = [](auto i) { return OperatorID(i.first); };
        transform(used_ops.begin(), used_ops.end(), back_inserter(plan), fn2);
    } else {
        learned_glc = make_shared<GLC>();
        for (int v : solver.get_core()) {
            v = abs(v);
            auto [op_id, op_bound] = ids_to_assumptions_pairs[v];

            if (op_id == -1) {
                learned_glc->yt_bound = op_bound;
            } else {
                learned_glc->add_op_bound(op_id, op_bound);
            }
        }
        if (learned_glc->empty()) {
            learned_glc = nullptr;
        }
    }
}

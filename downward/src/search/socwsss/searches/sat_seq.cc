#include "sat_seq.h"

string get_op_key(int op_id, int l) {
    stringstream key;
    key << "op[" << op_id << "," << l << "]";
    return key.str();
}

string get_fact_key(int var_id, int var_val, int l) {
    stringstream key;
    key << "fact[" << var_id << "," << var_val << "," << l << "]";
    return key.str();
}

string get_yt_assumption_key(int n_layers) {
    stringstream key;
    key << "[Y_T >= " << (n_layers + 1) << "]";
    return key.str();
}

string get_op_assumption_key(int op_id, int op_count) {
    stringstream key;
    key << "[op(" << op_id << ") >= " << (op_count + 1) << "]";
    return key.str();
}

SATSeq::SATSeq(const Options& opts, shared_ptr<TaskProxy> task_proxy,
               vector<long>& op_counts)
    : Minisat22::Solver(),
      opts(opts),
      task_proxy(task_proxy),
      op_counts(op_counts),
      n_layers(accumulate(op_counts.begin(), op_counts.end(), 0L)) {
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

    base = convert();
    assumptions = get_assumptions();
}

void SATSeq::initialize_ids() {
    for (int l = 1; l <= n_layers; ++l) {
        for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
            string key = get_op_key(op_id, l);
            int id = id_generator;

            operators_to_ids[key] = id;
            ids_to_operators[id] = key;

            all_to_ids[key] = id;
            ids_to_all[id] = key;

            ids_to_operators_pairs[id] = {op_id, l};

            id_generator++;
        }
    }

    for (int l = 0; l <= n_layers; l++) {
        for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
            int domain_size = (*vars)[var_id].get_domain_size();
            for (int var_val = 0; var_val < domain_size; ++var_val) {
                string key = get_fact_key(var_id, var_val, l);
                int id = id_generator;

                facts_to_ids[key] = id;
                ids_to_facts[id] = key;

                all_to_ids[key] = id;
                ids_to_all[id] = key;

                ids_to_facts_pairs[id] = {var_id, var_val, l};

                id_generator++;
            }
        }
    }
}

void SATSeq::initialize_assumptions() {
    string key = get_yt_assumption_key(n_layers);
    int id = id_generator;

    assumptions_to_ids[key] = id;
    ids_to_assumptions[id] = key;

    all_to_ids[key] = id;
    ids_to_all[id] = key;

    ids_to_assumptions_pairs[id] = {-1, (n_layers + 1)};

    id_generator++;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        string key = get_op_assumption_key(op_id, op_counts[op_id]);
        int id = id_generator;

        assumptions_to_ids[key] = id;
        ids_to_assumptions[id] = key;

        all_to_ids[key] = id;
        ids_to_all[id] = key;

        ids_to_assumptions_pairs[id] = {op_id, (op_counts[op_id] + 1)};

        id_generator++;
    }
}

int SATSeq::s(int i, int j) {
    tuple<int, int> key(i, j);
    if (aux_vars.count(key) == 0) {
        aux_vars[key] = id_generator++;
    }
    return aux_vars[key];
}

vector<vector<int>> SATSeq::encode_bcc(map<int, int>& x, int k) {
    int n = x.size();

    if (k == 0) {
        vector<vector<int>> clauses;
        for (int i = 1; i <= n; ++i) {
            clauses.emplace_back(ili({-x[i]}));
        }
        return clauses;
    }

    vector<vector<int>> clauses({{-x[1], s(1, 1)}});

    for (int j = 2; j <= k; ++j) {
        clauses.emplace_back(ili({-s(1, j)}));
    }

    for (int i = 2; i < n; ++i) {
        clauses.emplace_back(ili({-x[i], s(i, 1)}));
        clauses.emplace_back(ili({-s(i - 1, 1), s(i, 1)}));
        for (int j = 2; j <= k; ++j) {
            clauses.emplace_back(ili({-x[i], -s(i - 1, j - 1), s(i, j)}));
            clauses.emplace_back(ili({-s(i - 1, j), s(i, j)}));
        }
        clauses.emplace_back(ili({-x[i], -s(i - 1, k)}));
    }

    clauses.emplace_back(ili({-x[n], -s(n - 1, k)}));

    aux_vars.clear();

    return clauses;
}

vector<vector<int>> SATSeq::do_part1(int l) {
    if (l == 0) return {};

    map<int, int> x;
    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        string key = get_op_key(op_id, l);
        x[op_id + 1] = operators_to_ids[key];
    }

    return encode_bcc(x, 1);
}

vector<vector<int>> SATSeq::do_part2(int l) {
    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        map<int, int> x;
        for (int var_val = 0; var_val < (*vars)[var_id].get_domain_size();
             ++var_val) {
            string key = get_fact_key(var_id, var_val, l);
            int fact_id = facts_to_ids[key];
            x[var_val + 1] = fact_id;
        }
        vector<vector<int>> clauses = encode_bcc(x, 1);
        copy(clauses.begin(), clauses.end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> SATSeq::do_part3(int l) {
    if (l != 0) return {};

    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        int var_val = initial_state[var_id];

        if (var_val != -1) {
            string key = get_fact_key(var_id, var_val, 0);
            int fact_id = facts_to_ids[key];
            encoded.emplace_back(ili({fact_id}));
        } else {
            int domain_size = (*vars)[var_id].get_domain_size();
            for (int var_val = 0; var_val < domain_size; ++var_val) {
                string key = get_fact_key(var_id, var_val, 0);
                int fact_id = facts_to_ids[key];
                encoded.emplace_back(ili({-fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> SATSeq::do_part4(int l) {
    if (l == 0) return {};

    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        string op_key = get_op_key(op_id, l);
        for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
            int var_val = pres[op_id][var_id];
            if (var_val != -1) {
                string fact_key = get_fact_key(var_id, var_val, l - 1);
                int op_id = operators_to_ids[op_key];
                int fact_id = facts_to_ids[fact_key];
                encoded.emplace_back(ili({-op_id, fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> SATSeq::do_part5(int l) {
    if (l == 0) return {};

    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        string op_key = get_op_key(op_id, l);
        for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
            int var_val = posts[op_id][var_id];
            if (var_val != -1) {
                string fact_key = get_fact_key(var_id, var_val, l);
                int op_id = operators_to_ids[op_key];
                int fact_id = facts_to_ids[fact_key];
                encoded.emplace_back(ili({-op_id, fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> SATSeq::do_part6(int l) {
    if (l == n_layers) return {};

    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        for (int var_val = 0; var_val < (*vars)[var_id].get_domain_size();
             ++var_val) {
            string fact1_key = get_fact_key(var_id, var_val, l + 1);
            string fact2_key = get_fact_key(var_id, var_val, l);
            int fact1_id = facts_to_ids[fact1_key];
            int fact2_id = facts_to_ids[fact2_key];

            vector<int> clause({-fact1_id, fact2_id});
            for (int op_id : prods[var_id][var_val]) {
                string op_key = get_op_key(op_id, l + 1);
                op_id = operators_to_ids[op_key];
                clause.push_back(op_id);
            }
            encoded.push_back(clause);
        }
    }

    return encoded;
}

vector<vector<int>> SATSeq::do_part7(int l) {
    if (l != n_layers) return {};

    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < vars->size(); ++var_id) {
        int var_val = goal_state[var_id];
        if (var_val != -1) {
            string fact_key = get_fact_key(var_id, var_val, n_layers);
            int fact_id = facts_to_ids[fact_key];

            string assumption_key = get_yt_assumption_key(n_layers);
            int assumption_id = assumptions_to_ids[assumption_key];

            encoded.emplace_back(ili({fact_id, assumption_id}));
        }
    }

    return encoded;
}

vector<vector<int>> SATSeq::do_part8(int l) {
    if (l != n_layers) return {};

    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < ops->size(); ++op_id) {
        map<int, int> x;
        for (int l = 1; l <= n_layers; ++l) {
            string op_key = get_op_key(op_id, l);
            x[l] = operators_to_ids[op_key];
        }

        int k = op_counts[op_id];
        vector<vector<int>> clause = encode_bcc(x, k);

        string key = get_op_assumption_key(op_id, k);
        int assumption_id = assumptions_to_ids[key];
        for (vector<int>& c : clause) {
            c.push_back(assumption_id);
        }

        copy(clause.begin(), clause.end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> SATSeq::convert() {
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

vector<vector<int>> SATSeq::get_assumptions() {
    vector<vector<int>> assumptions;
    for (pair<int, string> a : ids_to_assumptions) {
        assumptions.emplace_back(ili({-a.first}));
    }
    return assumptions;
}

pair<int, int> SATSeq::get_n_vars_n_clauses() {
    auto fn = [](vector<int> i) {
        auto fn = [](int i, int j) { return abs(i) < abs(j); };
        return *max_element(i.begin(), i.end(), fn);
    };
    vector<int> m;
    transform(base.begin(), base.end(), back_inserter(m), fn);
    int n_vars = *max_element(m.begin(), m.end());
    int n_clauses = base.size();
    return {n_vars, n_clauses};
}

void SATSeq::make_minisat_input(vector<vector<int>> encoded, string filename) {
    ofstream file(filename);
    if (file.is_open()) {
        auto [n_vars, n_clauses] = get_n_vars_n_clauses();
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

void SATSeq::save_file(vector<vector<int>> encoded, string filename) {
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

string SATSeq::tos(vector<vector<int>> encoded) {
    stringstream file;
    for (vector<int>& clause : encoded) {
        for (int c : clause) {
            file << c << " ";
        }
        file << endl;
    }
    return file.str();
}

string SATSeq::format(vector<vector<int>> part, bool ignore_aux) {
    string formula = "\t";

    for (vector<int>& clause : part) {
        string clause_str;

        for (int i = 0; i < (int)clause.size(); ++i) {
            int var_id = clause[i];
            string var_name;
            if (var_id < 0) {
                var_name = "~";
                var_id = abs(var_id);
            }
            if (ids_to_all.count(var_id) > 0) {
                // var_name += ids_to_all[var_id];

                if (ids_to_facts_pairs.count(var_id) > 0) {
                    int var_val, l;
                    tie(var_id, var_val, l) = ids_to_facts_pairs[var_id];
                    var_name += task_proxy->get_variables()[var_id]
                                    .get_fact(var_val)
                                    .get_name() +
                                "_l" + to_string(l);
                } else if (ids_to_operators_pairs.count(var_id) > 0) {
                    int op_id, l;
                    tie(op_id, l) = ids_to_operators_pairs[var_id];
                    var_name += task_proxy->get_operators()[op_id].get_name() +
                                "_l" + to_string(l);
                } else if (ids_to_assumptions_pairs.count(var_id) > 0) {
                    int op_id, op_bound;
                    tie(op_id, op_bound) = ids_to_assumptions_pairs[var_id];
                    if (op_id == -1) {
                        var_name += "[YT >= " + to_string(op_bound) + "]";
                    } else {
                        var_name +=
                            "[" +
                            task_proxy->get_operators()[op_id].get_name() +
                            " >= " + to_string(op_bound) + "]";
                    }
                }
            } else {
                var_name += "Aux" + to_string(var_id);
                if (ignore_aux) {
                    var_name = "";
                }
            }

            if (i < ((int)clause.size() - 1) && var_name != "") {
                var_name += " | ";
            }

            clause_str += var_name;
        }

        formula += clause_str + "\n\t";
    }

    return formula;
}

string SATSeq::print() {
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

string SATSeq::exec(const char* cmd) {
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

void SATSeq::declare_vars(const int max_id) {
    while (nVars() < max_id + 1) {
        newVar();
    }
}

void SATSeq::iterate(vector<int>& obj, Minisat22::vec<Minisat22::Lit>& v,
                     int& max_var) {
    for (int l : obj) {
        v.push((l > 0) ? Minisat22::mkLit(l, false)
                       : Minisat22::mkLit(-l, true));

        if (abs(l) > max_var) {
            max_var = abs(l);
        }
    }
}

bool SATSeq::sat() {
    for (vector<int>& obj : base) {
        Minisat22::vec<Minisat22::Lit> cl;
        int max_var = -1;

        iterate(obj, cl, max_var);

        if (max_var > 0) {
            declare_vars(max_var);
        }

        addClause(cl);
    }

    Minisat22::vec<Minisat22::Lit> a;
    int max_var = -1;

    vector<int> aa;
    transform(assumptions.begin(), assumptions.end(), back_inserter(aa),
              [](auto i) { return i[0]; });
    iterate(aa, a, max_var);

    if (max_var > 0) {
        declare_vars(max_var);
    }

    return solve(a);
}

vector<int> SATSeq::get_core() {
    Minisat22::vec<Minisat22::Lit>* c = &(conflict);
    vector<int> ret;
    for (int i = 0; i < c->size(); ++i) {
        int l = Minisat22::var((*c)[i]) * (Minisat22::sign((*c)[i]) ? 1 : -1);
        ret.emplace_back(l);
    }
    return ret;
}

vector<int> SATSeq::get_model() {
    Minisat22::vec<Minisat22::lbool>* m = &(model);

    Minisat22::lbool True = Minisat22::lbool((uint8_t)0);

    vector<int> ret;
    for (int i = 1; i < m->size(); ++i) {
        int l = i * ((*m)[i] == True ? 1 : -1);
        ret.emplace_back(l);
    }
    return ret;
}

void SATSeq::print_solver_info() {
    cerr << string(80, '*') << endl;

    vector<vector<int>> proc_conflict;
    for (int i = 0; i < conflict.size(); ++i) {
        int l = Minisat22::var(conflict[i]) *
                (Minisat22::sign(conflict[i]) ? 1 : -1);
        proc_conflict.emplace_back(vector<int>({l}));
    }

    vector<vector<int>> proc_learnts;
    for (int i = 0; i < learnts.size(); ++i) {
        Minisat22::Clause& c = ca[learnts[i]];
        vector<int> learnt;
        for (int j = 0; j < c.size(); ++j) {
            int l = Minisat22::var(c[j]) * (Minisat22::sign(c[j]) ? 1 : -1);
            learnt.emplace_back(l);
        }
        proc_learnts.emplace_back(learnt);
    }

    /*
    vector<vector<int>> proc_reasons;
    for (int i = 0; i < trail.size(); i++) {
        Minisat22::Var v = var(trail[i]);
        if (reason(v) != Minisat22::CRef_Undef) {
            Minisat22::Clause& c = ca[reason(v)];
            vector<int> reason;
            for (int i = 0; i < c.size(); ++i) {
                int l = Minisat22::var(c[i]) * (Minisat22::sign(c[i]) ? 1 : -1);
                reason.emplace_back(l);
            }
            proc_reasons.emplace_back(reason);
        }
    }
    */

    cerr << "CONFLICT: \n" << format(proc_conflict, true) << endl;
    cerr << "LEARNTS: \n" << format(proc_learnts, true) << endl;
    cerr << "N VARS: \t" << nVars() << endl;
    cerr << "N CLAUSES: \t" << clauses.size() << endl;
    // cerr << "REASONS: \n" << format(proc_reasons, true) << endl;

    cerr << string(80, '*') << endl;
}

void SATSeq::operator()() {
    sequenciable = sat();
    // print_solver_info();

    if (sequenciable) {
        vector<pair<int, int>> used_ops;
        for (int v : get_model()) {
            if (v >= 0 && ids_to_operators_pairs.count(v) > 0) {
                auto [op_id, layer] = ids_to_operators_pairs[v];
                used_ops.emplace_back(op_id, layer);
            }
        }

        auto fn1 = [](auto i, auto j) { return i.second < j.second; };
        sort(used_ops.begin(), used_ops.end(), fn1);
        auto fn2 = [](auto i) { return OperatorID(i.first); };
        transform(used_ops.begin(), used_ops.end(), back_inserter(plan), fn2);
    } else {
        learned_glc = make_shared<GLC>();
        for (int v : get_core()) {
            v = abs(v);
            auto [op_id, op_bound] = ids_to_assumptions_pairs[v];

            if (op_id == -1) {
                if (opts.get<bool>("add_yt_bound")) {
                    learned_glc->yt_bound = op_bound;
                }
            } else {
                learned_glc->add_op_bound(op_id, op_bound);
            }
        }
        sort(learned_glc->ops_bounds.begin(), learned_glc->ops_bounds.end(),
             [](auto i, auto j) { return i.first < j.first; });
        if (learned_glc->empty()) {
            learned_glc = nullptr;
        }
    }
}

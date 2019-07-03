#include "sat_seq.h"

PlanToMinisat::PlanToMinisat(shared_ptr<TaskProxy> task_proxy, int n_layers,
                             vector<int>& op_counts)
    : task_proxy(task_proxy), n_layers(n_layers), op_counts(op_counts) {
    this->ops = make_shared<OperatorsProxy>(this->task_proxy->get_operators());
    this->vars = make_shared<VariablesProxy>(this->task_proxy->get_variables());

    this->initial_state = vector<int>(this->vars->size(), -1);
    for (FactProxy init : this->task_proxy->get_initial_state()) {
        int var_id = init.get_variable().get_id();
        this->initial_state[var_id] = init.get_value();
    }

    this->goal_state = vector<int>(this->vars->size(), -1);
    for (FactProxy goal : this->task_proxy->get_goals()) {
        int var_id = goal.get_variable().get_id();
        this->goal_state[var_id] = goal.get_value();
    }

    for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
        const OperatorProxy& op = (*this->ops)[op_id];

        vector<int> pre(this->vars->size(), -1);
        for (FactProxy condition : op.get_preconditions()) {
            int var_id = condition.get_variable().get_id();
            pre[var_id] = condition.get_value();
        }

        vector<int> post(this->vars->size(), -1);
        for (EffectProxy effect_proxy : op.get_effects()) {
            FactProxy effect = effect_proxy.get_fact();
            int var_id = effect.get_variable().get_id();
            post[var_id] = effect.get_value();
        }

        this->pres.push_back(pre);
        this->posts.push_back(post);
    }

    this->initialize_ids();
    this->initialize_assumptions();
}

void PlanToMinisat::initialize_ids() {
    for (int l = 1; l <= this->n_layers; ++l) {
        for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
            stringstream key;
            key << "op[" << op_id << "," << l << "]";
            int id = this->id_generator;

            this->operators_to_ids[key.str()] = id;
            this->ids_to_operators[id] = key.str();

            this->all_to_ids[key.str()] = id;
            this->ids_to_all[id] = key.str();

            this->id_generator++;
        }
    }

    for (int l = 0; l <= this->n_layers; l++) {
        for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
            int domain_size = (*this->vars)[var_id].get_domain_size();
            for (int var_val = 0; var_val < domain_size; ++var_val) {
                stringstream key;
                key << "fact[" << var_id << "," << var_val << "," << l << "]";
                int id = this->id_generator;

                this->facts_to_ids[key.str()] = id;
                this->ids_to_facts[id] = key.str();

                this->all_to_ids[key.str()] = id;
                this->ids_to_all[id] = key.str();

                this->id_generator++;
            }
        }
    }
}

void PlanToMinisat::initialize_assumptions() {
    stringstream key;
    key << "[Y_T >= " << (this->n_layers + 1) << "]";
    int id = this->id_generator;

    this->assumptions_to_ids[key.str()] = id;
    this->ids_to_assumptions[id] = key.str();

    this->all_to_ids[key.str()] = id;
    this->ids_to_all[id] = key.str();

    this->id_generator++;

    for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
        stringstream key;
        key << "[op(" << op_id << ") >= " << (this->op_counts[op_id] + 1)
            << "]";
        int id = this->id_generator;

        this->assumptions_to_ids[key.str()] = id;
        this->ids_to_assumptions[id] = key.str();

        this->all_to_ids[key.str()] = id;
        this->ids_to_all[id] = key.str();

        this->id_generator++;
    }

    for (auto i : this->assumptions_to_ids) {
        cout << get<0>(i) << " " << get<1>(i) << endl;
    }
}

int PlanToMinisat::s(int i, int j) {
    tuple<int, int> key = make_tuple(i, j);
    if (this->aux_vars.count(key) == 0) {
        this->aux_vars[key] = this->id_generator++;
    }
    return this->aux_vars[key];
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

    this->aux_vars.clear();

    return clauses;
}

vector<vector<int>> PlanToMinisat::do_part1(int l) {
    map<int, int> x;
    for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
        stringstream key;
        key << "op[" << op_id << "," << l << "]";
        x[op_id + 1] = this->operators_to_ids[key.str()];
    }

    return this->encode_bcc(x, 1);
}

vector<vector<int>> PlanToMinisat::do_part2(int l) {
    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
        map<int, int> x;
        for (int var_val = 0; var_val < (*this->vars)[var_id].get_domain_size();
             ++var_val) {
            stringstream key;
            key << "fact[" << var_id << "," << var_val << "," << l << "]";
            int fact_id = this->facts_to_ids[key.str()];
            x[var_val + 1] = fact_id;
        }
        vector<vector<int>> clauses = this->encode_bcc(x, 1);
        copy(clauses.begin(), clauses.end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part3() {
    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
        int var_val = this->initial_state[var_id];

        if (var_val != -1) {
            stringstream key;
            key << "fact[" << var_id << "," << var_val << "," << 0 << "]";

            int fact_id = this->facts_to_ids[key.str()];
            encoded.emplace_back(initializer_list<int>({fact_id}));
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part4(int l) {
    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
        stringstream op_key;
        op_key << "op[" << op_id << "," << l << "]";
        for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
            int var_val = this->pres[op_id][var_id];
            if (var_val != -1) {
                stringstream fact_key;
                fact_key << "fact[" << var_id << "," << var_val << ","
                         << (l - 1) << "]";
                int op_id = this->operators_to_ids[op_key.str()];
                int fact_id = this->facts_to_ids[fact_key.str()];
                encoded.emplace_back(initializer_list<int>({-op_id, fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part5(int l) {
    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
        stringstream op_key;
        op_key << "op[" << op_id << "," << l << "]";
        for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
            int var_val = this->posts[op_id][var_id];
            if (var_val != -1) {
                stringstream fact_key;
                fact_key << "fact[" << var_id << "," << var_val << "," << l
                         << "]";
                int op_id = this->operators_to_ids[op_key.str()];
                int fact_id = this->facts_to_ids[fact_key.str()];
                encoded.emplace_back(initializer_list<int>({-op_id, fact_id}));
            }
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part6(int l) {
    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
        for (int var_val = 0; var_val < (*this->vars)[var_id].get_domain_size();
             ++var_val) {
            stringstream fact1_key, fact2_key;
            fact1_key << "fact[" << var_id << "," << var_val << "," << l << "]";
            fact2_key << "fact[" << var_id << "," << var_val << "," << (l - 1)
                      << "]";
            int fact1_id = this->facts_to_ids[fact1_key.str()];
            int fact2_id = this->facts_to_ids[fact2_key.str()];

            vector<int> clause({-fact1_id, fact2_id});
            for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
                // int pre_val = this->pres[op_id][var_id];
                // int post_val = this->posts[op_id][var_id];
                // if (pre_val != -1 && post_val == var_val &&
                //    pre_val != var_val) {
                int post_val = this->posts[op_id][var_id];
                if (post_val == var_val) {
                    stringstream op_key;
                    op_key << "op[" << op_id << "," << l << "]";
                    int op_id = this->operators_to_ids[op_key.str()];
                    clause.push_back(op_id);
                }
            }
            encoded.push_back(clause);
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part7() {
    vector<vector<int>> encoded;

    for (size_t var_id = 0; var_id < this->vars->size(); ++var_id) {
        int var_val = this->goal_state[var_id];
        if (var_val != -1) {
            stringstream fact_key;
            fact_key << "fact[" << var_id << "," << var_val << ","
                     << this->n_layers << "]";
            int fact_id = this->facts_to_ids[fact_key.str()];

            stringstream assumption_key;
            assumption_key << "[Y_T >= " << (this->n_layers + 1) << "]";
            int assumption_id = this->assumptions_to_ids[assumption_key.str()];

            encoded.emplace_back(
                initializer_list<int>({fact_id, assumption_id}));
        }
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::do_part8() {
    vector<vector<int>> encoded;

    for (size_t op_id = 0; op_id < this->ops->size(); ++op_id) {
        map<int, int> x;
        for (int l = 1; l <= this->n_layers; ++l) {
            stringstream op_key;
            op_key << "op[" << op_id << "," << l << "]";
            x[l] = this->operators_to_ids[op_key.str()];
        }

        int k = this->op_counts[op_id];
        vector<vector<int>> clause = this->encode_bcc(x, k);

        stringstream key;
        key << "[op(" << op_id << ") >= " << (k + 1) << "]";
        int assumption_id = this->assumptions_to_ids[key.str()];
        for (vector<int>& c : clause) {
            c.push_back(assumption_id);
        }

        copy(clause.begin(), clause.end(), back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::convert() {
    vector<vector<int>> encoded;

    this->part3 = this->do_part3();
    this->part7 = this->do_part7();
    this->part8 = this->do_part8();

    copy(this->part3.begin(), this->part3.end(), back_inserter(encoded));
    copy(this->part7.begin(), this->part7.end(), back_inserter(encoded));
    copy(this->part8.begin(), this->part8.end(), back_inserter(encoded));

    for (int l = 0; l <= this->n_layers; ++l) {
        this->part2[l] = this->do_part2(l);

        copy(this->part2[l].begin(), this->part2[l].end(),
             back_inserter(encoded));
    }

    for (int l = 1; l <= this->n_layers; ++l) {
        this->part1[l] = this->do_part1(l);
        this->part4[l] = this->do_part4(l);
        this->part5[l] = this->do_part5(l);
        this->part6[l] = this->do_part6(l);

        copy(this->part1[l].begin(), this->part1[l].end(),
             back_inserter(encoded));
        copy(this->part4[l].begin(), this->part4[l].end(),
             back_inserter(encoded));
        copy(this->part5[l].begin(), this->part5[l].end(),
             back_inserter(encoded));
        copy(this->part6[l].begin(), this->part6[l].end(),
             back_inserter(encoded));
    }

    return encoded;
}

vector<vector<int>> PlanToMinisat::get_assumptions() {
    vector<vector<int>> assumptions;

    for (pair<int, string> a : this->ids_to_assumptions) {
        assumptions.emplace_back(initializer_list<int>({-a.first}));
    }

    return assumptions;
}

void PlanToMinisat::make_minisat_input(vector<vector<int>> encoded,
                                       string filename) {
    ofstream file(filename);
    if (file.is_open()) {
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
            if (this->ids_to_all.count(var_id) > 0) {
                var_name += this->ids_to_all[var_id];
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

    r += "\nPART 3:\n\t" + this->format(this->part3) + "\n";
    r += "\nPART 7:\n\t" + this->format(this->part7) + "\n";
    r += "\nPART 8:\n\t" + this->format(this->part8) + "\n";

    for (int l = 0; l <= this->n_layers; ++l) {
        r += string(line_size, '*');
        r += "\nLAYER " + to_string(l) + ":\n";

        r += "\nPART 2:\n\t" + this->format(this->part2[l]) + "\n";

        r += string(line_size, '*') + "\n";
    }

    for (int l = 1; l <= this->n_layers; ++l) {
        r += string(line_size, '*');
        r += "\nLAYER " + to_string(l) + ":\n";

        r += "\nPART 1:\n\t" + this->format(this->part1[l]) + "\n";
        r += "\nPART 4:\n\t" + this->format(this->part4[l]) + "\n";
        r += "\nPART 5:\n\t" + this->format(this->part5[l]) + "\n";
        r += "\nPART 6:\n\t" + this->format(this->part6[l]) + "\n";

        r += string(line_size, '*') + "\n";
    }

    r += string(line_size, '*') + "\n";

    return r;
}

void PlanToMinisat::operator()() {
    string input("input.cnf");
    string output("output.txt");

    vector<vector<int>> base = this->convert();
    vector<vector<int>> assumptions = this->get_assumptions();

    vector<vector<int>> encoded;
    copy(base.begin(), base.end(), back_inserter(encoded));
    copy(assumptions.begin(), assumptions.end(), back_inserter(encoded));

    this->make_minisat_input(encoded, input);

    this->save_file(base, string("base.txt"));
    this->save_file(assumptions, string("assumptions.txt"));

    cout << this->print() << endl;

    // int status =
    //    system((string("minisat") + string(" ") + input + string(" ") +
    //    output)
    //               .c_str());
    // cout << status;

    // ifstream file(output);
    // if (file.is_open()) {
    //    string line;
    //    getline(file, line, '\n');
    //    cout << line << endl;
    //}
    // file.close();

    int status =
        system((string("./sat_seq.py ") + string(" ") + string("base.txt") +
                string(" ") + string("assumptions.txt"))
                   .c_str());
    cout << status << endl;
}

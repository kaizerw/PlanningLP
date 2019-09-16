#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>

#include "minisat22/core/Solver.h"

using namespace std;

void declare_vars(Minisat22::Solver& s, const int max_id) {
    while (s.nVars() < max_id + 1)
        s.newVar();
}

void iterate(vector<int> &obj, Minisat22::vec<Minisat22::Lit>& v, int& max_var) {
    for (int l : obj) {
        v.push((l > 0) ? Minisat22::mkLit(l, false) : Minisat22::mkLit(-l, true));

        if (abs(l) > max_var)
            max_var = abs(l);
    }
}

void add_cl(Minisat22::Solver& s, vector<int> &obj) {
    Minisat22::vec<Minisat22::Lit> cl;
    int max_var = -1;

    iterate(obj, cl, max_var);

    if (max_var > 0)
        declare_vars(s, max_var);

    s.addClause(cl);
}

bool solve(Minisat22::Solver& s, vector<int> &a_obj) {
    Minisat22::vec<Minisat22::Lit> a;
    int max_var = -1;

    iterate(a_obj, a, max_var);

    if (max_var > 0)
        declare_vars(s, max_var);

    return s.solve(a);
}

vector<int> get_core(Minisat22::Solver& s) {
    Minisat22::vec<Minisat22::Lit> *c = &(s.conflict);
    vector<int> ret;
    for (int i = 0; i < c->size(); ++i) {
        int l = Minisat22::var((*c)[i]) * (Minisat22::sign((*c)[i]) ? 1 : -1);
        ret.emplace_back(l);
    }
    return ret;
}

vector<int> get_model(Minisat22::Solver& s) {
    Minisat22::vec<Minisat22::lbool> *m = &(s.model);

    Minisat22::lbool True = Minisat22::lbool((uint8_t)0);

    vector<int> ret;
    for (int i = 1; i < m->size(); ++i) {
        int l = i * ((*m)[i] == True ? 1 : -1);
        ret.emplace_back(l);
    }
    return ret;
}

vector<int> split(string s, string delimiter){
    vector<int> list;
    size_t pos = 0;
    string token;
    while ((pos = s.find(delimiter)) != string::npos) {
        token = s.substr(0, pos);
        list.push_back(atoi(token.c_str()));
        s.erase(0, pos + delimiter.length());
    }
    //list.push_back(atoi(s.c_str()));
    return list;
}

vector<vector<int>> read_base(string base_filename) {
    vector<vector<int>> ret;
    ifstream file(base_filename);
    if (file.is_open()) {
        string line;
        while(getline(file, line)) {
            ret.emplace_back(split(line, " "));
        }
        file.close();
    }
    return ret;
}

vector<int> read_assumptions(string assumptions_filename) {
    vector<int> ret;
    ifstream file(assumptions_filename);
    if (file.is_open()) {
        string line;
        while (getline(file, line)) {
            istringstream s(line);
            int i;
            s >> i;
            ret.emplace_back(i);
        }
        file.close();
    }
    return ret;
}

int main(int argc, char **argv) {
    if (argc == 3) {
        string base_filename = string(argv[1]);
        string assumptions_filename = string(argv[2]);

        vector<vector<int>> base = read_base(base_filename);
        vector<int> assumptions = read_assumptions(assumptions_filename);

        Minisat22::Solver solver;

        for (vector<int> &cl : base) {
            add_cl(solver, cl);
        }

        bool solved = solve(solver, assumptions);

        cout << solved << " ";
        if (solved) {
            vector<int> model = get_model(solver);
            for (size_t i = 0; i < model.size(); ++i) {
                cout << model[i];
                if (i < model.size() - 1) {
                    cout << " ";
                }
            }
            cout << endl;
        } else {
            vector<int> core = get_core(solver);
            for (size_t i = 0; i < core.size(); ++i) {
                cout << core[i];
                if (i < core.size() - 1) {
                    cout << " ";
                }
            }
            cout << endl;
        }
    }

    return 0;
}

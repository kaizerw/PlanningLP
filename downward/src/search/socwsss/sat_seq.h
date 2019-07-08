#ifndef SAT_SEQ_H
#define SAT_SEQ_H

#include <algorithm>
#include <cmath>
#include <fstream>
#include <iostream>
#include <map>
#include <memory>
#include <set>
#include <sstream>
#include <string>
#include <tuple>
#include <vector>

#include "../task_proxy.h"

using namespace std;

struct PlanToMinisat {
    shared_ptr<TaskProxy> task_proxy;
    int n_layers;
    vector<int> op_counts;
    int id_generator = 1;
    map<tuple<int, int>, int> aux_vars;

    shared_ptr<OperatorsProxy> ops;
    shared_ptr<VariablesProxy> vars;
    vector<int> initial_state;
    vector<int> goal_state;
    vector<vector<int>> pres, posts;

    map<string, int> facts_to_ids;
    map<int, string> ids_to_facts;
    map<string, int> operators_to_ids;
    map<int, string> ids_to_operators;
    map<string, int> all_to_ids;
    map<int, string> ids_to_all;
    map<string, int> assumptions_to_ids;
    map<int, string> ids_to_assumptions;

    vector<vector<int>> part3, part7, part8;
    map<int, vector<vector<int>>> part1, part2, part4, part5, part6;

    PlanToMinisat(shared_ptr<TaskProxy> task_proxy, int n_layers,
                  vector<int>& op_counts);
    void initialize_ids();
    void initialize_assumptions();
    int s(int i, int j);
    vector<vector<int>> encode_bcc(map<int, int>& x, int k);
    vector<vector<int>> do_part1(int l);
    vector<vector<int>> do_part2(int l);
    vector<vector<int>> do_part3();
    vector<vector<int>> do_part4(int l);
    vector<vector<int>> do_part5(int l);
    vector<vector<int>> do_part6(int l);
    vector<vector<int>> do_part7();
    vector<vector<int>> do_part8();
    vector<vector<int>> convert();
    vector<vector<int>> get_assumptions();
    void make_minisat_input(vector<vector<int>> encoded, string filename);
    void save_file(vector<vector<int>> encoded, string filename);
    string format(vector<vector<int>> part);
    string print();
    void operator()();
};

#endif

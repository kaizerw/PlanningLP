#ifndef FLORIAN_DELETE_RELAXATION_CONSTRAINTS_H
#define FLORIAN_DELETE_RELAXATION_CONSTRAINTS_H

#include "../../lp/lp_solver.h"
#include "../../task_proxy.h"

#include <cassert>
#include <memory>
#include <sstream>
#include <string>
#include <unordered_map>

using namespace std;

namespace options {
class Options;
}

class FlorianDeleteRelaxationConstraints {
    bool use_time_vars;
    bool use_integer_vars;
    shared_ptr<TaskProxy> task_proxy;
    double infinity;
    unordered_map<string, int> var_op_used;
    unordered_map<string, int> var_fact_reached;
    unordered_map<string, int> var_first_achiever;
    unordered_map<string, int> var_op_time;
    unordered_map<string, int> var_fact_time;
    vector<vector<int>> constraint_ids;

    int get_var_op_used(OperatorProxy op, vector<lp::LPVariable> &variables);
    int get_var_fact_reached(FactProxy f, vector<lp::LPVariable> &variables);
    int get_var_first_achiever(OperatorProxy op, FactProxy f,
                               vector<lp::LPVariable> &variables);
    int get_var_op_time(OperatorProxy op, vector<lp::LPVariable> &variables);
    int get_var_fact_time(FactProxy f, vector<lp::LPVariable> &variables);

    int get_constraint_id(FactProxy f);

    void create_constraints(vector<lp::LPVariable> &variables,
                            vector<lp::LPConstraint> &constraints,
                            double infinity);

   public:
    FlorianDeleteRelaxationConstraints(bool use_time_vars,
                                       bool use_integer_vars,
                                       shared_ptr<TaskProxy> task_proxy,
                                       double infinity);

    void operator()(vector<lp::LPVariable> &variables,
                    vector<lp::LPConstraint> &constraints, const State &state);
};

#endif

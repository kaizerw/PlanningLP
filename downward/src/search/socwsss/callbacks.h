#ifndef CALLBACKS_H
#define CALLBACKS_H

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wignored-attributes"
#include <ilcplex/ilocplex.h>
#pragma GCC diagnostic pop

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <sstream>
#include <utility>

#include "benders.h"

using namespace std;

using Function = IloCplex::Callback::Function;
using Context = IloCplex::Callback::Context;
using OperatorCount = vector<int>;

struct CustomCallback : public Function {
    shared_ptr<Benders> benders;

    CustomCallback(shared_ptr<Benders> benders);
    pair<double, vector<double>> extract_sol(const Context &c);
    pair<int, OperatorCount> round_sol(const Context &c, double original_z,
                                       vector<double> &original_x);
    bool test_relaxation(const Context &c, int rounded_z,
                         OperatorCount &rounded_x);
    bool test_card(const Context &c, double original_z,
                   vector<double> &original_x, int rounded_z,
                   OperatorCount &rounded_x);
    void sequence(const Context &c, double original_z,
                  vector<double> &original_x, int rounded_z,
                  OperatorCount &rounded_x);
    void invoke(const Context &c);
};

#endif

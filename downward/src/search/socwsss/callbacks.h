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

#include "benders.h"

using namespace std;

using Function = IloCplex::Callback::Function;
using Context = IloCplex::Callback::Context;

struct CustomCallback : public Function {
    shared_ptr<Benders> benders;

    CustomCallback(shared_ptr<Benders> benders);
    tuple<double, vector<double>> extract_sol(const Context &c);
    tuple<int, vector<int>> round_sol(const Context &c, double o_z,
                                      vector<double> &o_x);
    bool test_card(const Context &c, double o_z, vector<double> &o_x, int r_z,
                   vector<int> &r_x);
    bool test_incumbent(const Context &c, int r_z);
    bool test_relaxation(const Context &c, int r_z, vector<int> &r_x);
    void sequence(const Context &c, double o_z, vector<double> &o_x, int r_z,
                  vector<int> &r_x);
    void invoke(const Context &c);
};

#endif

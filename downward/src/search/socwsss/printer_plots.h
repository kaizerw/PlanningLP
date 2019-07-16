#ifndef PRINTER_PLOTS_H
#define PRINTER_PLOTS_H

#include <algorithm>
#include <chrono>
#include <functional>
#include <iostream>
#include <iterator>
#include <memory>
#include <numeric>

#include "glc.h"

using namespace std;

class PrinterPlots {
   public:
    int n_ops;
    int n_vars;
    shared_ptr<vector<shared_ptr<GLC>>> glcs;
    chrono::time_point<chrono::system_clock> start;

    vector<int> plot_max_op_count;
    vector<int> plot_max_num_ops;
    vector<int> plot_max_num_distinct_ops;
    vector<double> plot_max_f_found;
    vector<int> plot_nodes_expanded;

    vector<int> plot_lp_added_constraints;
    vector<int> plot_lp_added_variables;
    vector<int> plot_lp_updated_constraints;
    vector<int> plot_lp_all_constraints;
    vector<int> plot_lp_all_variables;
    vector<double> plot_lp_oc_solution;
    vector<double> plot_lp_rounded_oc_solution;

    vector<double> plot_pre_lp_time;
    vector<double> plot_lp_time;
    vector<double> plot_astar_time;

    PrinterPlots(int n_ops, int n_vars,
                 shared_ptr<vector<shared_ptr<GLC>>> glcs,
                 chrono::time_point<chrono::system_clock> start);
    int compute_times_made_progress();
    void update(int lp_h_oc, vector<int> rounded_solution, int c_size,
                int x_size);
    void show_data(int seq, double best_bound_found, int repeated_sequencings,
                   int restarts);
};

#endif

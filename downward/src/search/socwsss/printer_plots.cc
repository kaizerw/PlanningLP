#include "printer_plots.h"

template <typename T>
double calc_mean(vector<T> data) {
    double mean = 0;
    if (data.size() > 0) {
        mean = accumulate(data.begin(), data.end(), 0.0) / data.size();
    }
    return mean;
}

template <typename T>
double calc_median(vector<T> data) {
    sort(data.begin(), data.end());
    double median = 0;
    if (data.size() > 0) {
        if (data.size() % 2 == 0) {
            double n_1 = data[(data.size() / 2) - 1];
            double n = data[data.size() / 2];
            median = (n_1 + n) / 2;
        } else {
            median = data[data.size() / 2];
        }
    }
    return median;
}

PrinterPlots::PrinterPlots(int n_ops, int n_vars,
                           shared_ptr<vector<shared_ptr<GLC>>> glcs,
                           chrono::time_point<chrono::system_clock> start)
    : n_ops(n_ops), n_vars(n_vars), glcs(glcs), start(start) {}

int PrinterPlots::compute_times_made_progress() {
    int times_made_progress = 0;
    if (this->plot_lp_oc_solution.size() >= 2) {
        for (int i = 0; i < (int)(this->plot_lp_oc_solution.size() - 1); ++i) {
            if (this->plot_lp_oc_solution[i + 1] >
                this->plot_lp_oc_solution[i]) {
                times_made_progress++;
            }
        }
    }
    return times_made_progress;
}

void PrinterPlots::update(int lp_h_oc, vector<int> rounded_solution, int c_size,
                          int x_size) {
    // Store values to plots
    this->plot_lp_all_constraints.emplace_back(c_size);
    this->plot_lp_all_variables.emplace_back(x_size);
    this->plot_lp_oc_solution.emplace_back(lp_h_oc);
    this->plot_max_op_count.emplace_back(*max_element(
        rounded_solution.begin(), rounded_solution.begin() + this->n_ops));
    this->plot_max_num_ops.emplace_back(accumulate(
        rounded_solution.begin(), rounded_solution.begin() + this->n_ops, 0));
    this->plot_max_num_distinct_ops.emplace_back(count_if(
        rounded_solution.begin(), rounded_solution.begin() + this->n_ops,
        [](int count) { return count > 0; }));
}

void PrinterPlots::show_data(int seq, double best_bound_found,
                             int repeated_sequencings, int restarts) {
    double total_solve_time = chrono::duration_cast<chrono::microseconds>(
                                  chrono::system_clock::now() - this->start)
                                  .count();

    vector<double> ops_by_constraint;
    transform(this->glcs->begin(), this->glcs->end(),
              back_inserter(ops_by_constraint), [&](shared_ptr<GLC> glc) {
                  return ((double)glc->ops_bounds.size()) / this->n_ops;
              });

    // Print out custom attributes
    cout << fixed;
    cout.precision(5);

    cout << "Repeated seqs: " << repeated_sequencings << endl;
    cout << "Restarts: " << restarts << endl;

    // Convert times to seconds
    function<double(double)> ms_to_s = [](double i) { return i / 1e6; };
    transform(this->plot_pre_lp_time.begin(), this->plot_pre_lp_time.end(),
              this->plot_pre_lp_time.begin(), ms_to_s);
    transform(this->plot_lp_time.begin(), this->plot_lp_time.end(),
              this->plot_lp_time.begin(), ms_to_s);
    transform(this->plot_astar_time.begin(), this->plot_astar_time.end(),
              this->plot_astar_time.begin(), ms_to_s);

    // exit_code
    cout << "Max f found: "
         << (this->plot_max_f_found.size() > 0
                 ? *max_element(this->plot_max_f_found.begin(),
                                this->plot_max_f_found.end())
                 : 0)
         << endl;
    cout << "Best bound found: " << max(best_bound_found, 0.0) << endl;
    cout << "Mean ops by constraint: " << calc_mean<double>(ops_by_constraint)
         << endl;
    cout << "Median ops by constraint: "
         << calc_median<double>(ops_by_constraint) << endl;
    cout << "Last ops by constraint: "
         << (ops_by_constraint.size() > 0 ? ops_by_constraint.back() : 0)
         << endl;
    cout << "Mean LP added constraints: "
         << calc_mean<int>(this->plot_lp_added_constraints) << endl;
    cout << "Last LP added constraints: "
         << (this->plot_lp_added_constraints.size() > 0
                 ? this->plot_lp_added_constraints.back()
                 : 0)
         << endl;
    cout << "Number of ops: " << this->n_ops << endl;
    cout << "Number of variables: " << this->n_vars << endl;
    cout << "Number of seqs: " << seq << endl;
    cout << "Times made progress: " << this->compute_times_made_progress()
         << endl;
    // plan_cost
    // plan_length
    cout << "Last nodes expanded: "
         << (this->plot_nodes_expanded.size() > 0
                 ? this->plot_nodes_expanded.back()
                 : 0)
         << endl;
    cout << "Last astar time: "
         << (this->plot_astar_time.size() > 0 ? this->plot_astar_time.back()
                                              : 0)
         << endl;
    cout << "Mean nodes expanded: " << calc_mean<int>(this->plot_nodes_expanded)
         << endl;
    cout << "Max op count: "
         << (this->plot_max_op_count.size() > 0
                 ? *max_element(this->plot_max_op_count.begin(),
                                this->plot_max_op_count.end())
                 : 0)
         << endl;
    cout << "Max num ops: "
         << (this->plot_max_num_ops.size() > 0
                 ? *max_element(this->plot_max_num_ops.begin(),
                                this->plot_max_num_ops.end())
                 : 0)
         << endl;
    cout << "Max num distinct ops: "
         << (this->plot_max_num_distinct_ops.size() > 0
                 ? *max_element(this->plot_max_num_distinct_ops.begin(),
                                this->plot_max_num_distinct_ops.end())
                 : 0)
         << endl;
    cout << "Max LP solution: "
         << (this->plot_lp_oc_solution.size() > 0
                 ? *max_element(this->plot_lp_oc_solution.begin(),
                                this->plot_lp_oc_solution.end())
                 : 0)
         << endl;
    cout << "Initial LP solution: "
         << (this->plot_lp_oc_solution.size() > 0
                 ? this->plot_lp_oc_solution.front()
                 : 0)
         << endl;
    cout << "Total astar time: "
         << accumulate(this->plot_astar_time.begin(),
                       this->plot_astar_time.end(), 0.0)
         << "s" << endl;
    cout << "Total pre LP time: "
         << accumulate(this->plot_pre_lp_time.begin(),
                       this->plot_pre_lp_time.end(), 0.0)
         << "s" << endl;
    cout << "Total LP time: "
         << accumulate(this->plot_lp_time.begin(), this->plot_lp_time.end(),
                       0.0)
         << "s" << endl;
    cout << "Total solve time: " << ms_to_s(total_solve_time) << "s" << endl;
    // planner_memory

    /*
   cout << "Plot max op count: ";
   copy(this->plot_max_op_count.begin(), this->plot_max_op_count.end(),
        ostream_iterator<int>(cout, ";"));
   cout << endl;
   cout << "Plot max f found: ";
   copy(this->plot_max_f_found.begin(), this->plot_max_f_found.end(),
        ostream_iterator<double>(cout, ";"));
   cout << endl;
   cout << "Plot nodes expanded: ";
   copy(this->plot_nodes_expanded.begin(), this->plot_nodes_expanded.end(),
        ostream_iterator<int>(cout, ";"));
   cout << endl;

   cout << "Plot LP added constraints: ";
   copy(this->plot_lp_added_constraints.begin(),
        this->plot_lp_added_constraints.end(),
        ostream_iterator<int>(cout, ";"));
   cout << endl;
   cout << "Plot LP added variables: ";
   copy(this->plot_lp_added_variables.begin(),
        this->plot_lp_added_variables.end(), ostream_iterator<int>(cout, ";"));
   cout << endl;
   cout << "Plot LP updated constraints: ";
   copy(this->plot_lp_updated_constraints.begin(),
        this->plot_lp_updated_constraints.end(),
        ostream_iterator<int>(cout, ";"));
   cout << endl;
   cout << "Plot LP all constraints: ";
   copy(this->plot_lp_all_constraints.begin(),
        this->plot_lp_all_constraints.end(), ostream_iterator<int>(cout, ";"));
   cout << endl;
   cout << "Plot LP all variables: ";
   copy(this->plot_lp_all_variables.begin(), this->plot_lp_all_variables.end(),
        ostream_iterator<int>(cout, ";"));
   cout << endl;
   cout << "Plot LP OC solution: ";
   copy(this->plot_lp_oc_solution.begin(), this->plot_lp_oc_solution.end(),
        ostream_iterator<double>(cout, ";"));
   cout << endl;
   cout << "Plot LP rounded OC solution: ";
   copy(this->plot_lp_rounded_oc_solution.begin(),
        this->plot_lp_rounded_oc_solution.end(),
        ostream_iterator<double>(cout, ";"));
   cout << endl;

   cout << "Plot pre LP time: ";
   copy(this->plot_pre_lp_time.begin(), this->plot_pre_lp_time.end(),
        ostream_iterator<double>(cout, ";"));
   cout << endl;
   cout << "Plot LP time: ";
   copy(this->plot_lp_time.begin(), this->plot_lp_time.end(),
        ostream_iterator<double>(cout, ";"));
   cout << endl;
   cout << "Plot astar time: ";
   copy(this->plot_astar_time.begin(), this->plot_astar_time.end(),
        ostream_iterator<double>(cout, ";"));
   cout << endl;
   */

    /*
    cout << "Plot bar op count: ";
    for (OperatorProxy op : this->n_ops) {
        int oc = this->op_count[op.get_id()];
        if (oc > 0) {
            cout << op.get_name() << "|" << oc << ";";
        }
    }
    cout << endl;
    */
}

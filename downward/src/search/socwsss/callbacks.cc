#include "callbacks.h"

CustomCallback::CustomCallback(shared_ptr<Benders> benders)
    : benders(benders) {}

tuple<double, vector<double>> CustomCallback::extract_sol(const Context &c) {
    double o_z = 0;
    vector<double> o_x;

    if (c.inRelaxation()) {
        o_z = c.getRelaxationObjective();
        for (int i = 0; i < this->benders->n_ops; ++i) {
            o_x.emplace_back(abs(c.getRelaxationPoint(this->benders->x[i])));
        }
    } else if (c.inCandidate()) {
        o_z = c.getCandidateObjective();
        for (int i = 0; i < this->benders->n_ops; ++i) {
            o_x.emplace_back(abs(c.getCandidatePoint(this->benders->x[i])));
        }
    }
    return make_tuple(o_z, o_x);
}

tuple<int, OperatorCount> CustomCallback::round_sol(const Context &c,
                                                    double o_z,
                                                    vector<double> &o_x) {
    int r_z = 0;
    OperatorCount r_x;

    if (c.inRelaxation()) {
        r_z = round(o_z);
        transform(o_x.begin(), o_x.end(), back_inserter(r_x),
                  [](double value) { return (int)ceil(value); });
    } else if (c.inCandidate()) {
        r_z = (int)o_z;
        transform(o_x.begin(), o_x.end(), back_inserter(r_x),
                  [](double value) { return (int)value; });
    }

    return make_tuple(r_z, r_x);
}

bool CustomCallback::test_card(const Context &c, double o_z,
                               vector<double> &o_x, int r_z,
                               OperatorCount &r_x) {
    // We call our SAT sequencing procedure inside the python callback
    // interface of Gurobi 5.6 if both the cardinality and objective of the
    // rounded up operator count is within 20% of the linear count
    if (c.inRelaxation()) {
        double o_c = accumulate(o_x.begin(), o_x.end(), 0);
        int r_c = accumulate(r_x.begin(), r_x.end(), 0);

        if (r_z > (1.2 * o_z) || r_c > (1.2 * o_c)) {
            return false;
        }
    }
    return true;
}

bool CustomCallback::test_incumbent(const Context &c, int r_z) {
    if (r_z >= c.getIncumbentObjective()) {
        if (c.inCandidate()) {
            c.rejectCandidate();
        }
        return false;
    }
    return true;
}

bool CustomCallback::test_relaxation(const Context &c, int r_z,
                                     OperatorCount &r_x) {
    bool status = true;
    if (c.inRelaxation()) {
        status = (r_z >= 0) &&
                 all_of(r_x.begin(), r_x.end(), [](int c) { return c >= 0; });
    }
    return status;
}

void CustomCallback::sequence(const Context &c, double o_z, vector<double> &o_x,
                              int r_z, OperatorCount &r_x) {
    this->benders->printer_plots->show_data(
        this->benders->seq, this->benders->cplex.getBestObjValue(),
        this->benders->repeated_seqs, this->benders->restarts);

    // Try to sequence current solution
    bool found_in_cache = false;
    tuple<bool, vector<shared_ptr<GLC>>, Plan, int> info;
    tie(found_in_cache, info) = this->benders->get_sequence(r_z, r_x);
    bool status = false;
    vector<shared_ptr<GLC>> learned_glcs;
    Plan plan;
    int plan_cost = 0;
    tie(status, learned_glcs, plan, plan_cost) = info;

    if (status) {
        // If this plan has the same cost as the lower-bound found by the
        // LP, to the nearest integer, then we have optimally solved the
        // planning problem. If the plan cost is more than the lower bound,
        // this solution can be used to bound the search process
        if (c.inRelaxation()) {
            vector<int> plan_counts(this->benders->n_ops, 0);
            for (OperatorID &op_id : plan) {
                plan_counts[op_id.get_index()]++;
            }

            IloNumArray values(c.getEnv());
            for (int i = 0; i < this->benders->x.getSize(); ++i) {
                if (i < this->benders->n_ops) {
                    values.add(plan_counts[i]);
                } else {
                    values.add(NAN);
                }
            }

            c.postHeuristicSolution(this->benders->x, values, plan_cost,
                                    Context::SolutionStrategy::Propagate);
        }
    } else {
        // Learn and update LP constraints
        copy(learned_glcs.begin(), learned_glcs.end(),
             back_inserter(*(this->benders->glcs)));

        int missing_bounds;
        vector<IloExpr> cuts;
        tie(missing_bounds, cuts) = this->benders->get_cuts(learned_glcs);

        // Unless there is more than one missing bounds literal, the
        // constraint still invalidates the current linear optimum. If a
        // weakened constraint is generated that does not invalidate the
        // current linear optimum, the MIP search is restarted after any
        // weakened terms are replaced with the correct bounds literals
        if (missing_bounds > 1) {
            this->benders->restart = true;
            c.abort();
        }

        if (c.inRelaxation()) {
            if (!found_in_cache) {
                for_each(cuts.begin(), cuts.end(), [&](IloExpr expr) {
                    c.addUserCut(expr >= 1.0, IloCplex::UseCutForce, IloFalse);
                    expr.end();
                });
            }
        } else if (c.inCandidate()) {
            if (!found_in_cache) {
                for_each(cuts.begin(), cuts.end(), [&](IloExpr expr) {
                    c.rejectCandidate(expr >= 1.0);
                    expr.end();
                });
            } else {
                c.rejectCandidate();
            }
        }

        this->benders->update_and_prints(this->benders->seq, o_z, r_z, o_x, r_x,
                                         learned_glcs);
    }
}

void CustomCallback::invoke(const Context &c) {
    if (c.inCandidate() && !c.isCandidatePoint()) {
        c.rejectCandidate();
        return;
    }

    if (c.inRelaxation() || c.inCandidate()) {
        double o_z;
        vector<double> o_x;
        tie(o_z, o_x) = this->extract_sol(c);

        int r_z;
        OperatorCount r_x;
        tie(r_z, r_x) = this->round_sol(c, o_z, o_x);

        if (this->test_card(c, o_z, o_x, r_z, r_x) &&
            this->test_incumbent(c, r_z) &&
            this->test_relaxation(c, r_z, r_x)) {
            this->sequence(c, o_z, o_x, r_z, r_x);
        }
    }
}

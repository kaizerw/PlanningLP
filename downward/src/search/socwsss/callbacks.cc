#include "callbacks.h"

CustomCallback::CustomCallback(shared_ptr<Benders> benders)
    : benders(benders) {}

pair<double, vector<double>> CustomCallback::extract_sol(const Context &c) {
    double o_z = 0;
    vector<double> o_x;

    if (c.inRelaxation()) {
        o_z = c.getRelaxationObjective();
        for (int i = 0; i < this->benders->n_ops; ++i) {
            o_x.emplace_back(c.getRelaxationPoint(this->benders->x[i]));
        }
    } else if (c.inCandidate()) {
        o_z = c.getCandidateObjective();
        for (int i = 0; i < this->benders->n_ops; ++i) {
            o_x.emplace_back(c.getCandidatePoint(this->benders->x[i]));
        }
    }

    return {o_z, o_x};
}

pair<int, OperatorCount> CustomCallback::round_sol(const Context &c, double o_z,
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

    return {r_z, r_x};
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

void CustomCallback::sequence(const Context &c, double o_z, vector<double> &o_x,
                              int r_z, OperatorCount &r_x) {
    // Try to sequence current solution
    auto [found_in_cache, info] = this->benders->get_sequence(r_z, r_x);
    auto [status, learned_glc, plan, plan_cost] = info;

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
        if (!found_in_cache) {
            this->benders->glcs->emplace_back(learned_glc);

            // Unless there is more than one missing bounds literal, the
            // constraint still invalidates the current linear optimum. If a
            // weakened constraint is generated that does not invalidate the
            // current linear optimum, the MIP search is restarted after any
            // weakened terms are replaced with the correct bounds literals
            auto [missing_bounds, cut] = this->benders->get_cut(learned_glc);
            if (missing_bounds > 1) {
                this->benders->restart = true;
                c.abort();
            }

            if (c.inRelaxation()) {
                c.addUserCut(cut >= 1.0, IloCplex::UseCutForce, IloFalse);
            } else if (c.inCandidate()) {
                c.rejectCandidate(cut >= 1.0);
            }

            this->benders->update_and_prints(this->benders->seq, o_z, r_z, o_x,
                                             r_x);
        } else {
            if (c.inCandidate()) {
                c.rejectCandidate();
            }
        }
    }
}

void CustomCallback::invoke(const Context &c) {
    if (c.inCandidate() && c.isCandidateRay()) {
        c.rejectCandidate();
        return;
    }

    if (c.inRelaxation() || c.inCandidate()) {
        auto [o_z, o_x] = this->extract_sol(c);
        auto [r_z, r_x] = this->round_sol(c, o_z, o_x);

        if (this->test_relaxation(c, r_z, r_x) &&
            this->test_card(c, o_z, o_x, r_z, r_x)) {
            this->sequence(c, o_z, o_x, r_z, r_x);
        }
    }
}

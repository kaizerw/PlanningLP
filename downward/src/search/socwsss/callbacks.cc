#include "callbacks.h"

CustomCallback::CustomCallback(shared_ptr<Benders> benders)
    : benders(benders) {}

pair<double, vector<double>> CustomCallback::extract_sol(const Context &c) {
    double original_z = 0;
    vector<double> original_x;

    if (c.inRelaxation()) {
        original_z = c.getRelaxationObjective();
        for (int i = 0; i < this->benders->n_ops; ++i) {
            original_x.emplace_back(c.getRelaxationPoint(this->benders->x[i]));
        }
    } else if (c.inCandidate()) {
        original_z = c.getCandidateObjective();
        for (int i = 0; i < this->benders->n_ops; ++i) {
            original_x.emplace_back(c.getCandidatePoint(this->benders->x[i]));
        }
    }

    return {original_z, original_x};
}

pair<int, OperatorCount> CustomCallback::round_sol(const Context &c,
                                                   double original_z,
                                                   vector<double> &original_x) {
    int rounded_z = 0;
    OperatorCount rounded_x;

    if (c.inRelaxation()) {
        rounded_z = round(original_z);
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x),
                  [](double i) { return (int)ceil(i); });
    } else if (c.inCandidate()) {
        rounded_z = (int)original_z;
        transform(original_x.begin(), original_x.end(),
                  back_inserter(rounded_x), [](double i) { return (int)i; });
    }

    return {rounded_z, rounded_x};
}

bool CustomCallback::test_relaxation(const Context &c, int rounded_z,
                                     OperatorCount &rounded_x) {
    bool status = true;
    if (c.inRelaxation()) {
        status = (rounded_z >= 0) && all_of(rounded_x.begin(), rounded_x.end(),
                                            [](int c) { return c >= 0; });
    }
    return status;
}

bool CustomCallback::test_card(const Context &c, double original_z,
                               vector<double> &original_x, int rounded_z,
                               OperatorCount &rounded_x) {
    // We call our SAT sequencing procedure inside the python callback
    // interface of Gurobi 5.6 if both the cardinality and objective of the
    // rounded up operator count is within 20% of the linear count
    if (c.inRelaxation()) {
        double original_card =
            accumulate(original_x.begin(), original_x.end(), 0);
        int rounded_card = accumulate(rounded_x.begin(), rounded_x.end(), 0);

        if (rounded_z > (1.2 * original_z) ||
            rounded_card > (1.2 * original_card)) {
            return false;
        }
    }
    return true;
}

void CustomCallback::sequence(const Context &c, double original_z,
                              vector<double> &original_x, int rounded_z,
                              OperatorCount &rounded_x) {
    // Try to sequence current solution
    auto [found_in_cache, info] =
        this->benders->get_sequence(rounded_z, rounded_x);
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

            this->benders->update_and_prints(this->benders->seq, original_z,
                                             rounded_z, original_x, rounded_x);
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
        auto [original_z, original_x] = this->extract_sol(c);
        auto [rounded_z, rounded_x] =
            this->round_sol(c, original_z, original_x);

        if (this->test_relaxation(c, rounded_z, rounded_x) &&
            this->test_card(c, original_z, original_x, rounded_z, rounded_x)) {
            this->sequence(c, original_z, original_x, rounded_z, rounded_x);
        }
    }
}

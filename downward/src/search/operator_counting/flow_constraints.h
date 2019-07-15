#ifndef OPERATOR_COUNTING_FLOW_CONSTRAINTS_H
#define OPERATOR_COUNTING_FLOW_CONSTRAINTS_H

#include "constraint_generator.h"
#include "flow_constraint_internals.h"

#include "../pdbs/pattern_generator.h"

#include <vector>

namespace options {
class Options;
}

namespace operator_counting {
class FlowConstraints : public ConstraintGenerator {
    std::shared_ptr<pdbs::PatternCollectionGenerator> pattern_generator;
    bool remove_dead_states;
    bool single_transition_optimization;
    bool self_loop_optimization;
    bool weak_linking_constraints;
    bool use_mutexes;
    bool partial_merges;
    int max_merge_feature_size;
    double partial_merge_time_limit;
    double lp_solve_time_limit;

    std::vector<FlowConstraintInternals> sub_constraints;
    void add_partial_merge_features(
        const AbstractTask &task,
        std::vector<lp::LPVariable> &variables,
        std::vector<lp::LPConstraint> &constraints,
        double infinity);
public:
    explicit FlowConstraints(const options::Options &opts);

    virtual void initialize_constraints(
        const std::shared_ptr<AbstractTask> task,
        std::vector<lp::LPVariable> &variables,
        std::vector<lp::LPConstraint> &constraints,
        double infinity) override;
    virtual bool update_constraints(const State &state,
                                    lp::LPSolver &lp_solver) override;
};
}

#endif

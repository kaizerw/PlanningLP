#ifndef FLORIAN_FLOW_CONSTRAINTS_H
#define FLORIAN_FLOW_CONSTRAINTS_H

#include "flow_constraint_internals.h"

#include "../../lp/lp_solver.h"
#include "../../options/option_parser.h"
#include "../../pdbs/pattern_collection_generator_systematic.h"
#include "../../pdbs/pattern_generator.h"
#include "../../utils/countdown_timer.h"
#include "../../utils/logging.h"
#include "../../utils/timer.h"
#include "../algorithms/combinations.h"

#include <limits>
#include <unordered_map>
#include <vector>

using options::Options;
using pdbs::PatternCollectionGenerator;
using pdbs::PatternCollectionGeneratorSystematic;
using namespace std;

namespace options {
class Options;
}

struct FlorianFlowConstraints {
    shared_ptr<pdbs::PatternCollectionGenerator> pattern_generator;
    bool remove_dead_states;
    bool single_transition_optimization;
    bool self_loop_optimization;
    bool weak_linking_constraints;
    bool use_mutexes;
    bool partial_merges;
    int max_merge_feature_size;
    double partial_merge_time_limit;
    double lp_solve_time_limit;

    vector<FlowConstraintInternals> sub_constraints;
    void add_partial_merge_features(const AbstractTask &task,
                                    vector<lp::LPVariable> &variables,
                                    vector<lp::LPConstraint> &constraints,
                                    double infinity);

    explicit FlorianFlowConstraints(
        bool remove_dead_states = true,
        bool single_transition_optimization = true,
        bool self_loop_optimization = true,
        bool weak_linking_constraints = true, bool use_mutexes = true,
        bool partial_merges = true, int max_merge_feature_size = 2,
        double partial_merge_time_limit = numeric_limits<double>::infinity(),
        double merge_lp_solve_time_limit = numeric_limits<double>::infinity());

    void operator()(const shared_ptr<AbstractTask> task,
                    vector<lp::LPVariable> &variables,
                    vector<lp::LPConstraint> &constraints, double infinity,
                    const State &state);
};

#endif

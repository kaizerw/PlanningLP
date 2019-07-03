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

#include <unordered_map>
#include <vector>

using options::Options;
using pdbs::PatternCollectionGenerator;
using pdbs::PatternCollectionGeneratorSystematic;
using namespace std;

namespace options {
class Options;
}

class FlorianFlowConstraints {
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

   public:
    explicit FlorianFlowConstraints(
        bool remove_dead_states, bool single_transition_optimization,
        bool self_loop_optimization, bool weak_linking_constraints,
        bool use_mutexes, bool partial_merges, int max_merge_feature_size,
        double partial_merge_time_limit, double merge_lp_solve_time_limit);

    void operator()(const shared_ptr<AbstractTask> task,
                    vector<lp::LPVariable> &variables,
                    vector<lp::LPConstraint> &constraints, double infinity,
                    const State &state);
};

#endif

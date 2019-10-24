#ifndef FLORIAN_FLOW_CONSTRAINTS_H
#define FLORIAN_FLOW_CONSTRAINTS_H

#include "../../lp/lp_solver.h"
#include "../../options/option_parser.h"
#include "../../pdbs/pattern_collection_generator_systematic.h"
#include "../../pdbs/pattern_generator.h"
#include "../../utils/countdown_timer.h"
#include "../../utils/logging.h"
#include "../../utils/timer.h"
#include "../algorithms/combinations.h"
#include "../../pdbs/explicit_projection.h"
#include "../../utils/memory.h"

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

enum class OperatorCategory {
    IGNORE_OPERATOR,
    USE_OP_COUNT_DIRECTLY,
    USE_WEAK_LINKING_CONSTRAINT,
    USE_STRONG_LINKING_CONSTRAINT
};

struct FlowConstraintSettings {
    pdbs::Pattern pattern;
    bool remove_dead_states;
    bool single_transition_optimization;
    bool self_loop_optimization;
    bool weak_linking_constraints;
    bool use_mutexes;
    std::vector<std::vector<int>> partial_merge_states;
};

struct FlowConstraintInternals {
    std::vector<bool> is_goal;
    int state_constraint_offset;
    int current_state;
    bool initial_state_is_dead_end;
    int single_goal_state;
    std::unique_ptr<pdbs::AbstractionFunction> abstraction_function;

    int num_abstract_states;

    std::vector<OperatorCategory> get_operator_categories(
        const pdbs::AbstractTransitionSystem &transition_system,
        const TaskProxy &task_proxy, const FlowConstraintSettings &settings);
    void create_constraints(
        std::vector<lp::LPVariable> &variables,
        std::vector<lp::LPConstraint> &constraints, double infinity,
        const pdbs::AbstractTransitionSystem &transition_system,
        const TaskProxy &task_proxy, const FlowConstraintSettings &settings);

    FlowConstraintInternals(const AbstractTask &task,
                            std::vector<lp::LPVariable> &variables,
                            std::vector<lp::LPConstraint> &constraints,
                            double infinity,
                            const FlowConstraintSettings &settings);

    bool update_constraints(const State &state,
                            vector<lp::LPConstraint> &constraints);
    int get_num_abstract_states() const { return num_abstract_states; }
};

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

    vector<lp::LPVariable> lp_variables;
    vector<lp::LPConstraint> lp_constraints;

    vector<FlowConstraintInternals> sub_constraints;
    void add_partial_merge_features(const AbstractTask &task,
                                    vector<lp::LPVariable> &variables,
                                    vector<lp::LPConstraint> &constraints,
                                    double infinity);

    explicit FlorianFlowConstraints(
        const shared_ptr<AbstractTask> task, int lp_variables_offset,
        double infinity, const State &state, bool remove_dead_states = true,
        bool single_transition_optimization = true,
        bool self_loop_optimization = true,
        bool weak_linking_constraints = true, bool use_mutexes = true,
        bool partial_merges = true, int max_merge_feature_size = 2,
        double partial_merge_time_limit = numeric_limits<double>::infinity(),
        double merge_lp_solve_time_limit = numeric_limits<double>::infinity());
};

#endif

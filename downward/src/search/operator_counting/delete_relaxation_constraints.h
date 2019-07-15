#ifndef OPERATOR_COUNTING_DELETE_RELAXATION_CONSTRAINTS_H
#define OPERATOR_COUNTING_DELETE_RELAXATION_CONSTRAINTS_H

#include  "constraint_generator.h"

#include "../task_proxy.h"

#include <memory>

namespace options {
class Options;
}

namespace operator_counting {
class DeleteRelaxationConstraints : public ConstraintGenerator {
    bool use_time_vars;
    bool use_integer_vars;

    // [U_o] Is op part of the relaxed plan? Binary, indexed with op.id.
    std::vector<int> lp_var_id_op_used;

    // [R_f] Is fact <V,v> reached by the relaxed plan? Binary, indexed with var.id, value
    std::vector<std::vector<int>> lp_var_id_fact_reached;

    // [F_{o,f}] Is o the first achiever of fact <V,v> in the relaxed plan? Binary, indexed with op.id, var.id, value
    std::vector<std::vector<std::vector<int>>> lp_var_id_first_achiever;

    // [T_o] At what time is o used first? {0, ..., |O|}, indexed with op.id
    std::vector<int> lp_var_id_op_time;

    // [T_f] At what time is <V,v> first achieved? {0, ..., |O|}, indexed with var.id, value
    std::vector<std::vector<int>> lp_var_id_fact_time;

    // Indices of constraints that change in every state (indexed with var.id, value)
    std::vector<std::vector<int>> constraint_ids;

    // The state that is currently used for setting the bounds.
    // Remembering this makes it faster to unset the bounds when the state changes.
    std::vector<FactProxy> last_state;

    int get_var_op_used(OperatorProxy op);
    int get_var_fact_reached(FactProxy f);
    int get_var_first_achiever(OperatorProxy op, FactProxy f);
    int get_var_op_time(OperatorProxy op);
    int get_var_fact_time(FactProxy f);

    int get_constraint_id(FactProxy f);

    void create_auxiliary_variables(TaskProxy task_proxy,
                                    std::vector<lp::LPVariable> &variables);
    void create_constraints(TaskProxy task_proxy,
                            std::vector<lp::LPVariable> &variables,
                            std::vector<lp::LPConstraint> &constraints,
                            double infinity);
public:
    DeleteRelaxationConstraints(const options::Options &opts);

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

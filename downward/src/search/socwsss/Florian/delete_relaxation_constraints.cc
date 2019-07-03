#include "delete_relaxation_constraints.h"

FlorianDeleteRelaxationConstraints::FlorianDeleteRelaxationConstraints(
    bool use_time_vars, bool use_integer_vars, shared_ptr<TaskProxy> task_proxy,
    double infinity)
    : use_time_vars(use_time_vars),
      use_integer_vars(use_integer_vars),
      task_proxy(task_proxy),
      infinity(infinity) {}

int FlorianDeleteRelaxationConstraints::get_var_op_used(
    OperatorProxy op, vector<lp::LPVariable> &variables) {
    stringstream key;
    key << "op_used[" << op.get_id() << "]";
    if (this->var_op_used.count(key.str()) == 0) {
        this->var_op_used[key.str()] = variables.size();
        variables.emplace_back(0, 1, 0, use_integer_vars);
    }
    return this->var_op_used[key.str()];
}

int FlorianDeleteRelaxationConstraints::get_var_fact_reached(
    FactProxy f, vector<lp::LPVariable> &variables) {
    stringstream key;
    key << "fact_reached[" << f.get_variable().get_id() << "," << f.get_value()
        << "]";
    if (this->var_fact_reached.count(key.str()) == 0) {
        this->var_fact_reached[key.str()] = variables.size();
        variables.emplace_back(0, 1, 0, use_integer_vars);
    }
    return this->var_fact_reached[key.str()];
}

int FlorianDeleteRelaxationConstraints::get_var_first_achiever(
    OperatorProxy op, FactProxy f, vector<lp::LPVariable> &variables) {
    stringstream key;
    key << "first_achiever[" << op.get_id() << "," << f.get_variable().get_id()
        << "," << f.get_value() << "]";
    if (this->var_first_achiever.count(key.str()) == 0) {
        this->var_first_achiever[key.str()] = variables.size();
        variables.emplace_back(0, 1, 0, use_integer_vars);
    }
    return this->var_first_achiever[key.str()];
}

int FlorianDeleteRelaxationConstraints::get_var_op_time(
    OperatorProxy op, vector<lp::LPVariable> &variables) {
    int num_ops = task_proxy->get_operators().size();
    stringstream key;
    key << "op_time[" << op.get_id() << "]";
    if (this->var_op_time.count(key.str()) == 0) {
        this->var_op_time[key.str()] = variables.size();
        variables.emplace_back(0, num_ops, 0, use_integer_vars);
    }
    return this->var_op_time[key.str()];
}

int FlorianDeleteRelaxationConstraints::get_var_fact_time(
    FactProxy f, vector<lp::LPVariable> &variables) {
    int num_ops = task_proxy->get_operators().size();
    stringstream key;
    key << "fact_time[" << f.get_variable().get_id() << "," << f.get_value()
        << "]";
    if (this->var_fact_time.count(key.str()) == 0) {
        this->var_fact_time[key.str()] = variables.size();
        variables.emplace_back(0, num_ops, 0, use_integer_vars);
    }
    return this->var_fact_time[key.str()];
}

int FlorianDeleteRelaxationConstraints::get_constraint_id(FactProxy f) {
    return constraint_ids[f.get_variable().get_id()][f.get_value()];
}

void FlorianDeleteRelaxationConstraints::create_constraints(
    vector<lp::LPVariable> &variables, vector<lp::LPConstraint> &constraints,
    double infinity) {
    OperatorsProxy ops = task_proxy->get_operators();
    VariablesProxy vars = task_proxy->get_variables();

    // All goal facts must be reached (handled in variable bound instead of
    // constraint). R_f = 1 for all goal facts f.
    for (FactProxy goal : task_proxy->get_goals()) {
        variables[get_var_fact_reached(goal, variables)].lower_bound = 1;
    }

    // A fact is reached if it has a first achiever or is true in the current
    // state. sum_{o \in achievers(f)} F_{o,f} - R_f >= [s |= f] for each fact
    // f.
    constraint_ids.resize(vars.size());
    for (VariableProxy var : vars) {
        constraint_ids[var.get_id()].resize(var.get_domain_size());
        for (int value = 0; value < var.get_domain_size(); ++value) {
            constraint_ids[var.get_id()][value] = constraints.size();
            constraints.emplace_back(0, infinity);
            /* The constraint is:

               We add "- R_f" here, collect the achiever below and adapt
               the lower bound in each iteration, i.e., in update_constraints.
             */
            constraints.back().insert(
                get_var_fact_reached(var.get_fact(value), variables), -1);
        }
    }
    for (OperatorProxy op : ops) {
        for (EffectProxy eff : op.get_effects()) {
            FactProxy f = eff.get_fact();
            lp::LPConstraint &constraint = constraints[get_constraint_id(f)];
            constraint.insert(get_var_first_achiever(op, f, variables), 1);
        }
    }

    // If an operator is a first achiever, it must be used.
    // U_o >= F_{o,f} for each operator o and each of its effects f.
    for (OperatorProxy op : ops) {
        for (EffectProxy eff : op.get_effects()) {
            FactProxy f = eff.get_fact();
            lp::LPConstraint constraint(0, infinity);
            constraint.insert(get_var_op_used(op, variables), 1);
            constraint.insert(get_var_first_achiever(op, f, variables), -1);
            constraints.push_back(constraint);
        }
    }

    // If an operator is used, its preconditions must be reached.
    // R_f >= U_o for each operator o and each of its preconditions f.
    for (OperatorProxy op : ops) {
        for (FactProxy f : op.get_preconditions()) {
            lp::LPConstraint constraint(0, infinity);
            constraint.insert(get_var_fact_reached(f, variables), 1);
            constraint.insert(get_var_op_used(op, variables), -1);
            constraints.push_back(constraint);
        }
    }

    if (use_time_vars) {
        // Preconditions must be reached before the operator is used.
        // T_f <= T_o for each operator o and each of its preconditions f.
        for (OperatorProxy op : ops) {
            for (FactProxy f : op.get_preconditions()) {
                lp::LPConstraint constraint(0, infinity);
                constraint.insert(get_var_op_time(op, variables), 1);
                constraint.insert(get_var_fact_time(f, variables), -1);
                constraints.push_back(constraint);
            }
        }

        // If an operator is a first achiever, its effects are reached in the
        // time step following its use. T_o + 1 <= T_f + M(1 - F_{o,f}) for each
        // operator o and each of its effects f.
        // <--->  1 - M <= T_f - T_o - M*F_{o,f} <= infty
        int M = ops.size() + 1;
        for (OperatorProxy op : ops) {
            for (EffectProxy eff : op.get_effects()) {
                FactProxy f = eff.get_fact();
                lp::LPConstraint constraint(1 - M, infinity);
                constraint.insert(get_var_fact_time(f, variables), 1);
                constraint.insert(get_var_op_time(op, variables), -1);
                constraint.insert(get_var_first_achiever(op, f, variables), -M);
                constraints.push_back(constraint);
            }
        }
    }

    // If an operator is used, it must occur at least once.
    // U_o <= C_o for each operator o.
    for (OperatorProxy op : ops) {
        lp::LPConstraint constraint(0, infinity);
        constraint.insert(op.get_id(), 1);
        constraint.insert(get_var_op_used(op, variables), -1);
        constraints.push_back(constraint);
    }
}

void FlorianDeleteRelaxationConstraints::operator()(
    vector<lp::LPVariable> &variables, vector<lp::LPConstraint> &constraints,
    const State &state) {
    create_constraints(variables, constraints, infinity);

    for (FactProxy f : state) {
        constraints[get_constraint_id(f)].set_lower_bound(-1);
    }
}
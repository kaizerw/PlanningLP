#include "my_state.cpp"


class Exploration {
public:

    MyState initial_state;
    vector<FactProxy> goal_state;
    vector<OperatorProxy> operators;
    bool relaxed;

    Exploration(MyState initial_state, vector<FactProxy> goal_state, vector<OperatorProxy> operators, bool relaxed) {
        this->initial_state = initial_state;
        this->goal_state = goal_state;
        this->operators = operators;
        this->relaxed = relaxed;
    }

    SearchStatus operator()() {
        // If the initial state is a goal we can return
        if (is_goal(initial_state)) {
            return SOLVED;
        }
        // Initialize open and closed lists
        list<MyState> open_list, closed_list;
        open_list.push_back(initial_state);

        // Start a breadth-first search
        while (!open_list.empty()) {
            // Get a state from open list and add to closed list
            MyState current_state = open_list.front();
            open_list.pop_front();
            closed_list.push_back(current_state);

            // Generate state's successors
            for (OperatorProxy op : get_applicable_ops(current_state)) {
                // Apply operator to state. Whether relaxed or not depends on the flag relaxed
                MyState successor_state = apply_op(op, current_state);
                // Only consider states not explored yet
                if (!in_list(successor_state, closed_list) &&
                    !in_list(successor_state, open_list)) {
                    // If this state is a goal the search ends
                    if (is_goal(successor_state)) {
                        return SOLVED;
                    }
                    // If not the search continues
                    open_list.push_back(successor_state);
                }
            }
        }

        return FAILED;
    }

    bool is_goal(MyState state) {
        // Tuplefy goal and current state facts
        vector<tuple<int, int>> goal_facts, state_facts;
        function<tuple<int, int>(FactProxy)> tuplefy = [](FactProxy i){
            return make_tuple(i.get_variable().get_id(), i.get_value());
        };
        transform(state.facts.begin(), state.facts.end(), back_inserter(state_facts), tuplefy);
        transform(goal_state.begin(), goal_state.end(), back_inserter(goal_facts), tuplefy);

        // If all goal state facts are valid in current state then current state is a goal
        function<bool(tuple<int, int>)> test =[&](tuple<int, int> i){
            return find(state_facts.begin(), state_facts.end(), i) != state_facts.end();
        };
        return all_of(goal_facts.begin(), goal_facts.end(), test);
    }

    vector<OperatorProxy> get_applicable_ops(MyState state) {
        // Get all applicable operators in current state using operator_is_applicable_in_state function
        // We additionally test if the operator counting is different from zero
        // If the operator counting is positive its application is limited
        // If the operator counting is negative its application is unlimited
        vector<OperatorProxy> applicable_ops;
        function<bool(OperatorProxy)> filter = [&](OperatorProxy op){
            return state.op_count[op.get_id()] != 0 && is_applicable(op, state);
        };
        copy_if(operators.begin(), operators.end(), back_inserter(applicable_ops), filter);

        return applicable_ops;
    }

    bool is_applicable(OperatorProxy op, MyState state) {
        // Get all preconditions facts of this operator
        vector<FactProxy> preconditions = simplify<PreconditionsProxy, FactProxy>(op.get_preconditions());

        // Tuplefy precondition and current state facts
        vector<tuple<int, int>> pre_facts, state_facts;
        function<tuple<int, int>(FactProxy)> tuplefy = [](FactProxy i){
            return make_tuple(i.get_variable().get_id(), i.get_value());
        };
        transform(state.facts.begin(), state.facts.end(), back_inserter(state_facts), tuplefy);
        transform(preconditions.begin(), preconditions.end(), back_inserter(pre_facts), tuplefy);

        // The operator is applicable in current state
        // if all its precondition facts are valid in current state
        function<bool(tuple<int, int>)> test = [&](tuple<int, int> i){
            return find(state_facts.begin(), state_facts.end(), i) != state_facts.end();
        };
        return all_of(pre_facts.begin(), pre_facts.end(), test);
    }

    MyState apply_op(OperatorProxy op, MyState state) {
        MyState new_state = state;
        // Decrement operator counting of the applied operator
        new_state.op_count[op.get_id()] -= 1;

        // Get and simplify effect facts of this operator
        vector<EffectProxy> effects = simplify<EffectsProxy, EffectProxy>(op.get_effects());
        vector<FactProxy> facts_effects;
        function<FactProxy(EffectProxy)> transformer = [](EffectProxy i){
            return i.get_fact();
        };
        transform(effects.begin(), effects.end(), back_inserter(facts_effects), transformer);

        // If the operator application is not relaxed
        // we must override the previous facts with the new ones specified in effects
        // Those facts not in effects remain the same
        if (!relaxed) {
            vector<FactProxy> temp_facts;
            function<bool(FactProxy)> filter = [&](FactProxy new_state_fact){
                return find_if(facts_effects.begin(), facts_effects.end(), [&](FactProxy effect_fact){
                    return effect_fact.get_variable().get_id() == new_state_fact.get_variable().get_id();
                }) == facts_effects.end();
            };
            copy_if(new_state.facts.begin(), new_state.facts.end(), back_inserter(temp_facts), filter);
            new_state.facts = temp_facts;
        }

        // Add new facts to new state
        copy(facts_effects.begin(), facts_effects.end(), back_inserter(new_state.facts));

        return new_state;
    }

    bool in_list(MyState state, list<MyState> list) {
        // This method only verifies if a state is in the given list
        // The search only uses the set of facts
        // The operator counting is not relevant here
        vector<tuple<int, int>> state_facts_tuples;
        function<tuple<int, int>(FactProxy)> tuplefy = [](FactProxy i){
            return make_tuple(i.get_variable().get_id(), i.get_value());
        };
        transform(state.facts.begin(), state.facts.end(), back_inserter(state_facts_tuples), tuplefy);

        return find_if(list.begin(), list.end(), [&](MyState i){
            vector<tuple<int, int>> i_facts_tuples;
            transform(i.facts.begin(), i.facts.end(), back_inserter(i_facts_tuples), tuplefy);

            function<bool(tuple<int, int>)> test = [&](tuple<int, int> fact){
                return find(i_facts_tuples.begin(), i_facts_tuples.end(), fact) != i_facts_tuples.end();
            };
            return all_of(state_facts_tuples.begin(), state_facts_tuples.end(), test);
        }) != list.end();
    }

    template<class T1, class T2>
    vector<T2> simplify(T1 in) {
        vector<T2> out = vector<T2>();
        for (size_t i = 0; i < in.size(); ++i) {
            out.push_back(in[i]);
        }
        return out;
    }

};

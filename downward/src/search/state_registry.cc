#include "state_registry.h"

#include "per_state_information.h"
#include "task_proxy.h"

#include "task_utils/task_properties.h"

using namespace std;

StateRegistry::StateRegistry(const TaskProxy &task_proxy)
    : task_proxy(task_proxy),
      state_packer(task_properties::g_state_packers[task_proxy]),
      axiom_evaluator(g_axiom_evaluators[task_proxy]),
      num_variables(task_proxy.get_variables().size()),
      state_data_pool(get_bins_per_state()),
      registered_states(
          StateIDSemanticHash(state_data_pool, get_bins_per_state()),
          StateIDSemanticEqual(state_data_pool, get_bins_per_state())),
      op_count_pool(),
      soc_registered_states(
          SOCStateIDSemanticHash(state_data_pool, op_count_pool,
                                 get_bins_per_state()),
          SOCStateIDSemanticEqual(state_data_pool, op_count_pool,
                                  get_bins_per_state())),
      cached_initial_state(0) {}

StateRegistry::~StateRegistry() { delete cached_initial_state; }

StateID StateRegistry::insert_id_or_pop_state() {
    /*
      Attempt to insert a StateID for the last state of state_data_pool
      if none is present yet. If this fails (another entry for this state
      is present), we have to remove the duplicate entry from the
      state data pool.
    */
    if (soc) {
        StateID id(state_data_pool.size() - 1);
        pair<int, bool> result = soc_registered_states.insert(id.value);
        bool is_new_entry = result.second;
        if (!is_new_entry) {
            state_data_pool.pop_back();
            op_count_pool.pop_back();
        }
        assert(soc_registered_states.size() ==
               static_cast<int>(state_data_pool.size()));
        assert(soc_registered_states.size() ==
               static_cast<int>(op_count_pool.size()));
        return StateID(result.first);
    } else {
        StateID id(state_data_pool.size() - 1);
        pair<int, bool> result = registered_states.insert(id.value);
        bool is_new_entry = result.second;
        if (!is_new_entry) {
            state_data_pool.pop_back();
        }
        assert(registered_states.size() ==
               static_cast<int>(state_data_pool.size()));
        return StateID(result.first);
    }
}

GlobalState StateRegistry::lookup_state(StateID id) const {
    return GlobalState(state_data_pool[id.value], *this, id);
}

const GlobalState &StateRegistry::get_initial_state() {
    if (cached_initial_state == 0) {
        PackedStateBin *buffer = new PackedStateBin[get_bins_per_state()];
        // Avoid garbage values in half-full bins.
        fill_n(buffer, get_bins_per_state(), 0);

        State initial_state = task_proxy.get_initial_state();
        for (size_t i = 0; i < initial_state.size(); ++i) {
            state_packer.set(buffer, i, initial_state[i].get_value());
        }
        state_data_pool.push_back(buffer);
        // buffer is copied by push_back
        delete[] buffer;

        if (soc) {
            unordered_map<int, int> op_count_map;
            for (size_t op_id = 0; op_id < this->op_count.size(); ++op_id) {
                if (op_count[op_id] > 0) {
                    op_count_map[op_id] = this->op_count[op_id];
                }
            }
            op_count_pool.push_back(op_count_map);
        }

        StateID id = insert_id_or_pop_state();
        cached_initial_state = new GlobalState(lookup_state(id));
    }
    return *cached_initial_state;
}

// TODO it would be nice to move the actual state creation (and operator
// application)
//     out of the StateRegistry. This could for example be done by global
//     functions operating on state buffers (PackedStateBin *).
GlobalState StateRegistry::get_successor_state(const GlobalState &predecessor,
                                               const OperatorProxy &op) {
    assert(!op.is_axiom());
    state_data_pool.push_back(predecessor.get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];
    for (EffectProxy effect : op.get_effects()) {
        if (does_fire(effect, predecessor)) {
            FactPair effect_pair = effect.get_fact().get_pair();
            state_packer.set(buffer, effect_pair.var, effect_pair.value);
        }
    }
    axiom_evaluator.evaluate(buffer, state_packer);

    if (soc) {
        unordered_map<int, int> succ_op_count = lookup_op_count(predecessor.id);
        if (succ_op_count.count(op.get_id()) > 0) {
            succ_op_count[op.get_id()] -= 1;

            if (succ_op_count[op.get_id()] == 0) {
                succ_op_count.erase(op.get_id());
            }
        }
        op_count_pool.push_back(succ_op_count);
    }

    StateID id = insert_id_or_pop_state();
    return lookup_state(id);
}

int StateRegistry::get_bins_per_state() const {
    return state_packer.get_num_bins();
}

int StateRegistry::get_state_size_in_bytes() const {
    return get_bins_per_state() * sizeof(PackedStateBin);
}

void StateRegistry::print_statistics() const {
    cout << "Number of registered states: " << size() << endl;
    if (soc) {
        soc_registered_states.print_statistics();
    } else {
        registered_states.print_statistics();
    }
}

unordered_map<int, int> StateRegistry::lookup_op_count(StateID id) {
    return this->op_count_pool[id.value];
}
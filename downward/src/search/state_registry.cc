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
      num_operators(task_proxy.get_operators().size()),
      state_data_pool(get_bins_per_state()),
      registered_states(
          StateIDSemanticHash(state_data_pool, get_bins_per_state()),
          StateIDSemanticEqual(state_data_pool, get_bins_per_state())),
      cached_initial_state(0) {}

StateRegistry::StateRegistry(const TaskProxy &task_proxy, bool soc,
                             OperatorCount initial_op_count)
    : task_proxy(task_proxy),
      state_packer(task_properties::g_state_packers[task_proxy]),
      axiom_evaluator(g_axiom_evaluators[task_proxy]),
      num_variables(task_proxy.get_variables().size()),
      num_operators(task_proxy.get_operators().size()),
      state_data_pool(get_bins_per_state()),
      registered_states(
          StateIDSemanticHash(state_data_pool, get_bins_per_state()),
          StateIDSemanticEqual(state_data_pool, get_bins_per_state())),
      cached_initial_state(0),
      soc(soc),
      initial_op_count(initial_op_count) {
    vector<int> ranges;
    int mapped_ops_ids = 0;
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        int count = initial_op_count[op_id];
        if (count > 0) {
            ranges.emplace_back(count + 1);
            map_op_ids.emplace_back(mapped_ops_ids++);
        } else {
            map_op_ids.emplace_back(-1);
        }
    }

    op_count_packer = make_shared<int_packer::IntPacker>(ranges);
    op_count_bins = op_count_packer->get_num_bins();

    op_count_pool =
        make_shared<segmented_vector::SegmentedArrayVector<PackedStateBin>>(
            op_count_bins);

    soc_registered_states = make_shared<SOCStateIDSet>(
        SOCStateIDSemanticHash(state_data_pool, op_count_pool,
                               get_bins_per_state(), op_count_bins),
        SOCStateIDSemanticEqual(state_data_pool, op_count_pool,
                                get_bins_per_state(), op_count_bins));
}

StateRegistry::~StateRegistry() { delete cached_initial_state; }

StateID StateRegistry::insert_id_or_pop_state() {
    /*
      Attempt to insert a StateID for the last state of state_data_pool
      if none is present yet. If this fails (another entry for this state
      is present), we have to remove the duplicate entry from the
      state data pool.
    */
    if (soc) {
        auto [id, is_new_entry] =
            soc_registered_states->insert(state_data_pool.size() - 1);
        if (!is_new_entry) {
            state_data_pool.pop_back();
            op_count_pool->pop_back();
        }
        return StateID(id);
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
            PackedStateBin *op_count_buffer = new PackedStateBin[op_count_bins];
            fill_n(op_count_buffer, op_count_bins, 0);

            for (int op_id = 0; op_id < num_operators; ++op_id) {
                int idx = map_op_ids[op_id];
                if (idx >= 0) {
                    op_count_packer->set(op_count_buffer, idx,
                                         initial_op_count[op_id]);
                }
            }

            op_count_pool->push_back(op_count_buffer);
            delete[] op_count_buffer;
        }

        StateID id = insert_id_or_pop_state();
        cached_initial_state = new GlobalState(lookup_state(id));
    }
    return *cached_initial_state;
}

// TODO it would be nice to move the actual state creation (and operator
// application) out of the StateRegistry. This could for example be done by
// global functions operating on state buffers (PackedStateBin *).
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
        op_count_pool->push_back((*op_count_pool)[predecessor.id.value]);
        PackedStateBin *op_count_buffer =
            (*op_count_pool)[op_count_pool->size() - 1];
        int idx = map_op_ids[op.get_id()];
        if (idx >= 0) {
            int oc = op_count_packer->get(op_count_buffer, idx);
            op_count_packer->set(op_count_buffer, idx, max(oc - 1, 0));
        }
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
        soc_registered_states->print_statistics();
    } else {
        registered_states.print_statistics();
    }
}

OperatorCount StateRegistry::lookup_op_count(StateID id) const {
    OperatorCount op_count;
    const PackedStateBin *op_count_buffer = (*op_count_pool)[id.value];
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        int idx = map_op_ids[op_id];
        if (idx >= 0) {
            int oc = op_count_packer->get(op_count_buffer, idx);
            op_count.emplace_back(oc);
        } else {
            op_count.emplace_back(0);
        }
    }
    return op_count;
}
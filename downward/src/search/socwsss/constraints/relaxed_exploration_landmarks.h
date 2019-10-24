#ifndef RELAXED_EXPLORATION_LANDMARKS_H
#define RELAXED_EXPLORATION_LANDMARKS_H

#include "../landmarks/exploration.h"
#include "../task_proxy.h"
#include "../utils/hash.h"

#include <memory>
#include <unordered_set>
#include <vector>

using landmarks::Exploration;

using namespace std;

struct RelaxedExplorationLandmarks {
    const TaskProxy &task_proxy;
    shared_ptr<Exploration> exploration;

    RelaxedExplorationLandmarks(const TaskProxy &task_proxy);
    vector<int> operator()(bool level_out = true, bool compute_lvl_op = false);
};

#endif
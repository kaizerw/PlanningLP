#ifndef DELETE_RELAXATION_CONSTRAINTS_H
#define DELETE_RELAXATION_CONSTRAINTS_H

#include "../landmarks/landmark_factory_h_m.h"
#include "../landmarks/landmark_graph.h"
#include "../lp/lp_solver.h"
#include "../option_parser.h"
#include "../task_utils/task_properties.h"

#include "hmax_heuristic.h"

#include <cmath>
#include <map>
#include <set>
#include <tuple>
#include <utility>
#include <vector>

using landmarks::LandmarkFactoryHM;
using landmarks::LandmarkGraph;
using landmarks::LandmarkNode;
using soc_hmax_heuristic::SOCHMaxHeuristic;

using namespace std;

namespace options {
class Options;
}

class DeleteRelaxationConstraints {
    shared_ptr<TaskProxy> task_proxy;
    shared_ptr<AbstractTask> task;
    lp::LPSolverType lp_solver_type;
    double infinity;
    int n_ops;
    StateRegistry& state_registry;

   public:
    DeleteRelaxationConstraints(shared_ptr<TaskProxy> task_proxy,
                                shared_ptr<AbstractTask> task,
                                lp::LPSolverType lp_solver_type,
                                double infinity, int n_ops,
                                StateRegistry& state_registry);
    void operator()();
    vector<int> compute_action_landmarks();
    vector<pair<int, int>> compute_fact_landmarks();
};

#endif
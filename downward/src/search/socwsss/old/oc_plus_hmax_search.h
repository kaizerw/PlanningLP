#ifndef SEARCH_ENGINES_OC_PLUS_HMAX_SEARCH_H
#define SEARCH_ENGINES_OC_PLUS_HMAX_SEARCH_H

#include "../open_list.h"
#include "../search_engine.h"
#include "../lp/lp_solver.h"
#include "../w_operator_counting/wconstraint_generator.h"

#include <memory>
#include <string>
#include <vector>
#include <list>
#include <utility>
#include <algorithm>
#include <functional>
#include <tuple>
#include <iterator>
#include <ctime>
#include <chrono>

using namespace std;
using woperator_counting::WConstraintGenerator;

class Evaluator;
class Heuristic;

namespace options {
class Options;
}

namespace oc_plus_hmax_search {

class OcPlusHmaxSearch : public SearchEngine {
    vector<shared_ptr<WConstraintGenerator>> constraint_generators;
    lp::LPSolverType lp_solver_type;
    bool mip;
    bool print_current_oc;
    bool print_generalized_constraints;
    bool print_constraints;
    bool use_only_basic_constraint;
    bool increment_op_counts;
    bool discover_action_landmarks;
    bool use_intersect_action_landmarks;
    double infinity;
    double mip_time;
    double hmax_time;
    int max_iter;

protected:
    virtual void initialize() override;
    virtual SearchStatus step() override;

public:
    explicit OcPlusHmaxSearch(const options::Options &opts);
    virtual ~OcPlusHmaxSearch() = default;
};
}

#endif

#ifndef SOC_OPERATOR_COUNTING_HEURISTIC_H
#define SOC_OPERATOR_COUNTING_HEURISTIC_H

#include "../heuristic.h"
#include "../lp/lp_solver.h"
#include "../operator_counting/constraint_generator.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../utils/markup.h"

#include "glc.h"

#include <algorithm>
#include <cmath>
#include <memory>
#include <vector>

using namespace std;

namespace options {
class Options;
}

using operator_counting::ConstraintGenerator;

class SOCOperatorCountingHeuristic : public Heuristic {
    vector<shared_ptr<ConstraintGenerator>> constraint_generators;
    lp::LPSolver lp_solver;
    bool use_integer_op_counts;

   protected:
    virtual int compute_heuristic(const GlobalState &global_state) override;
    int compute_heuristic(const State &state, const vector<int> &op_count);

   public:
    explicit SOCOperatorCountingHeuristic(const options::Options &opts);
};

#endif

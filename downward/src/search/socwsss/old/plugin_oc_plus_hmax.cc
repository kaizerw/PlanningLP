#include "oc_plus_hmax_search.h"
#include "../search_common.h"
#include "../w_operator_counting/wconstraint_generator.h"

#include "../option_parser.h"
#include "../plugin.h"
#include <memory>

using namespace std;
using woperator_counting::WConstraintGenerator;

namespace plugin_oc_plus_hmax {
static shared_ptr<SearchEngine> _parse(OptionParser &parser) {
    parser.document_synopsis("OcPlusHmax Search", "OcPlusHmax Search");

    parser.add_list_option<shared_ptr<WConstraintGenerator>>(
        "constraint_generators",
        "methods that generate constraints over operator counting variables");
    parser.add_option<bool>("mip", "if solve a mip or not", "true");
    parser.add_option<bool>("print_current_oc", "if print current oc in each iteration", "false");
    parser.add_option<bool>("print_generalized_constraints", "if print discovered generalized landmark constraints in each iteration", "false");
    parser.add_option<bool>("print_constraints", "if print new constraints added do model", "false");
    parser.add_option<bool>("use_only_basic_constraint", "if use only basic generalized landmark constraint", "false");
    parser.add_option<bool>("increment_op_counts", "if try to increment all op counts to generate constraints", "false");
    parser.add_option<bool>("discover_action_landmarks", "if try to discover action landmarks to generate constraints", "false");
    parser.add_option<bool>("use_intersect_action_landmarks", "if try to intersect action landmarks from current state and successors", "false");
    parser.add_option<int>("max_iter", "maximum of iterations", "-1");

    lp::add_lp_solver_option_to_parser(parser);
    SearchEngine::add_options_to_parser(parser);

    Options opts = parser.parse();
    opts.verify_list_non_empty<shared_ptr<WConstraintGenerator>>("constraint_generators");

    shared_ptr<oc_plus_hmax_search::OcPlusHmaxSearch> engine;
    if (!parser.dry_run()) {
        engine = make_shared<oc_plus_hmax_search::OcPlusHmaxSearch>(opts);
    }

    return engine;
}

static Plugin<SearchEngine> _plugin("oc_plus_hmax", _parse);
}

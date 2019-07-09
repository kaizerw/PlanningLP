#include "socwsss_cplex_search.h"

namespace SOCWSSS_cplex_search {

SOCWSSSCplexSearch::SOCWSSSCplexSearch(const Options &opts)
    : SearchEngine(opts) {
    this->opts.set("constraint_type", opts.get<int>("constraint_type"));
    this->opts.set("use_seq_constraints",
                   opts.get<bool>("use_seq_constraints"));
    this->opts.set("use_lmcut_constraints",
                   opts.get<bool>("use_lmcut_constraints"));
    this->opts.set("use_dynamic_merging_constraints",
                   opts.get<bool>("use_dynamic_merging_constraints"));
    this->opts.set("use_delete_relaxation_constraints",
                   opts.get<bool>("use_delete_relaxation_constraints"));
    this->opts.set("use_flow_constraints",
                   opts.get<bool>("use_flow_constraints"));
    this->opts.set("use_sequencing_cache",
                   opts.get<bool>("use_sequencing_cache")),
        this->opts.set("print_current_oc", opts.get<bool>("print_current_oc"));
    this->opts.set("print_learned_constraints",
                   opts.get<bool>("print_learned_constraints"));
    this->opts.set("print_lp_changes", opts.get<bool>("print_lp_changes"));
    this->opts.set("print_search_tree", opts.get<bool>("print_search_tree"));
    this->opts.set("max_seqs", opts.get<int>("max_seqs"));
    this->opts.set("eval", opts.get<shared_ptr<Evaluator>>("eval"));
    this->opts.set("lp_solver_type",
                   lp::LPSolverType(opts.get_enum("lpsolver")));
    this->opts.set("cost_type", opts.get<int>("cost_type"));
    this->opts.set("max_time", opts.get<double>("max_time"));
    this->opts.set("bound", opts.get<int>("bound"));
    this->opts.set("pruning", opts.get<shared_ptr<PruningMethod>>("pruning"));
    this->opts.set("verbosity", opts.get<int>("verbosity"));
}

void SOCWSSSCplexSearch::initialize() {
    cout << "Initializing SOCWSSS CPLEX search..." << endl;

    // Test PlanToMinisat
    // OperatorCount op_counts({0, 1, 0, 1, 1, 1, 1, 0, 1, 0});
    // OperatorCount op_counts({0, 1, 1, 0, 1, 0});
    // int n_layers = accumulate(op_counts.begin(), op_counts.end(), 0);
    // PlanToMinisat(make_shared<TaskProxy>(this->task_proxy), n_layers,
    //              op_counts)();
    // exit(0);

    this->benders = make_shared<Benders>(opts, this->task_proxy, this->task,
                                         this->state_registry);

    this->custom_callback = make_shared<CustomCallback>(this->benders);

    this->custom_callback_mask |= IloCplex::Callback::Context::Id::Relaxation;
    this->custom_callback_mask |= IloCplex::Callback::Context::Id::Candidate;
}

SearchStatus SOCWSSSCplexSearch::step() {
    SearchStatus status = FAILED;

    // Execute a custom branch-and-cut
    while (true) {
        benders->initialize();
        benders->cplex.use(this->custom_callback.get(),
                           this->custom_callback_mask);

        try {
            benders->cplex.solve();
        } catch (IloException &ex) {
            string msg(ex.getMessage());
            cout << "CPLEX exception: " << msg << endl;
            if (msg.find("Out of memory") != string::npos) {
                exit(22);
            }
            exit(25);
        } catch (...) {
            exit(25);
        }

        if (benders->restart) {
            benders->restarts++;
            benders->restart = false;
        } else {
            break;
        }
    }

    // Print out custom attributes
    benders->printer_plots->show_data(
        benders->seq, benders->cplex.getBestObjValue(), benders->repeated_seqs,
        benders->restarts);

    if (benders->cplex.getStatus() == IloAlgorithm::Status::Infeasible ||
        benders->cplex.getStatus() ==
            IloAlgorithm::Status::InfeasibleOrUnbounded) {
        cout << "INFEASIBLE" << endl;
        exit(13);
    }

    // Get final plan
    if (benders->cplex.getStatus() == IloAlgorithm::Status::Optimal) {
        status = SOLVED;
        OperatorCount op_counts;
        for (IloInt i = 0; i < benders->n_ops; ++i) {
            op_counts.emplace_back(abs(benders->cplex.getValue(benders->x[i])));
        }
        this->set_plan(get<2>(benders->cache_op_counts[op_counts]));
    }

    return status;
}

void SOCWSSSCplexSearch::print_statistics() const {
    statistics.print_detailed_statistics();
    search_space.print_statistics();
    // pruning_method->print_statistics();
}

static shared_ptr<SearchEngine> _parse(OptionParser &parser) {
    parser.document_synopsis("SOCWSSS CPLEX Search", "SOCWSSS CPLEX Search");

    parser.add_option<int>("constraint_type", "constraint type added on fail",
                           "1");

    parser.add_option<bool>("use_seq_constraints",
                            "if use SEQ constraints or not", "true");
    parser.add_option<bool>("use_lmcut_constraints",
                            "if use lmcut constraints or not", "false");
    parser.add_option<bool>("use_dynamic_merging_constraints",
                            "if use dynamic merging or not", "false");
    parser.add_option<bool>("use_delete_relaxation_constraints",
                            "if use delete relaxation constraints or not",
                            "false");
    parser.add_option<bool>("use_flow_constraints",
                            "if use flow constraints or not", "false");

    parser.add_option<bool>("use_sequencing_cache", "if use sequencing cache",
                            "true");

    parser.add_option<bool>("print_current_oc",
                            "if print current oc in each iteration", "false");
    parser.add_option<bool>("print_learned_constraints",
                            "if print learned generalized landmark "
                            "constraints in each iteration",
                            "false");
    parser.add_option<bool>("print_lp_changes", "if print lp changes", "false");
    parser.add_option<bool>("print_search_tree", "if print search tree",
                            "false");

    parser.add_option<int>("max_seqs", "maximum attempts to sequence solution",
                           "-1");
    parser.add_option<shared_ptr<Evaluator>>("eval", "evaluator for h-value",
                                             "blind()");

    lp::add_lp_solver_option_to_parser(parser);
    SearchEngine::add_pruning_option(parser);
    SearchEngine::add_options_to_parser(parser);

    Options opts = parser.parse();

    shared_ptr<SOCWSSS_cplex_search::SOCWSSSCplexSearch> engine;
    if (!parser.dry_run()) {
        engine = make_shared<SOCWSSS_cplex_search::SOCWSSSCplexSearch>(opts);
    }

    return engine;
}

static Plugin<SearchEngine> _plugin("socwsss_cplex", _parse);
}  // namespace SOCWSSS_cplex_search

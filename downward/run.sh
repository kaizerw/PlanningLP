################################################################################
./build.py
################################################################################
#opts="socwsss(mip=true, \
#              constraint_type=3, \
#              get_op_count_from_bounds=false, \
#              print_current_oc=false, \
#              print_learned_constraints=false, \
#              print_lp_changes=false, \
#              print_search_tree=false, \
#              dynamic_merging=true, \
#              max_seqs=-1, \
#              max_time_to_solve=30, \
#              max_mem_to_solve=3.5, \
#              eval=lmcut())"
opts="socwsss_cplex(constraint_type=1, \
                    use_seq_constraints=true, \
                    use_lmcut_constraints=false, \
                    use_dynamic_merging_constraints=false, \
                    use_delete_relaxation_constraints=true, \
                    use_flow_constraints=false, \
                    use_sequencing_cache=true, \
                    print_current_oc=false, \
                    print_learned_constraints=false, \
                    print_lp_changes=false, \
                    print_search_tree=false, \
                    max_seqs=-1, \
                    eval=blind())"

# test op_count bitstring
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#valgrind ./builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas
# T1: repeated seqs >>> seqs and seqs = 1
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p04.sas --search "$opts"
# T1: memout
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p14.sas --search "$opts"
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts"
# T1 seq: not optimal solution: 1216561 x 1216462
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p11.sas --search "$opts"
# T1 seq h+: not optimal solution: 1215938 x 1215839
#opts="astar(operatorcounting([state_equation_constraints(use_safety_improvement=true), lmcut_constraints()]))"
#opts="astar(operatorcounting([delete_relaxation_constraints(use_time_vars=true), flow_constraints(partial_merges=true)]))"
./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
################################################################################
# Test Dynamic Merging
#opts="astar(operatorcounting(constraint_generators=[state_equation_constraints()]))"
#./fast-downward.py $DOWNWARD_BENCHMARKS/logistics/probLOGISTICS-4-0.sas --search "$opts"
#opts="socwsss(mip=true, \
#              constraint_type=2, \
#              get_op_count_from_bounds=false, \
#              print_current_oc=true, \
#              print_learned_constraints=true, \
#              print_lp_changes=true, \
#              print_search_tree=false, \
#              dynamic_merging=true, \
#              max_seqs=-1, \
#              max_time_to_solve=-1, \
#              eval=lmcut())"
#./fast-downward.py $DOWNWARD_BENCHMARKS/logistics/probLOGISTICS-4-0.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/gripper/prob01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/_gripper1hand/prob01.sas --search "$opts"
################################################################################
# OpSeq domain-by-domain
#opts="socwsss(mip=true, \
#              constraint_type=1, \
#              get_op_count_from_bounds=false, \
#              print_current_oc=false, \
#              print_learned_constraints=false, \
#              print_lp_changes=false, \
#              print_search_tree=false, \
#              dynamic_merging=true, \
#              max_seqs=-1, \
#              max_time_to_solve=1, \
#              eval=lmcut())"
# domain         plan_cost  seq in 1min (dm)    domain obs
# barman         90         nok (nok)           2 ops with cost=10 others cost=1
# elevators      56         nok (nok)           2 ops with cost=0 others fcost
# nomystery      11         ok  (ok)            all ops with cost=1
# openstacks     2          nok (nok)           1 op with cost=1 others cost=0
# parcprinter    375821     ok  (ok)            1 op with cost=0 and others with different costs>1
# pegsol         3          ok  (ok)            1 op with cost=1 others cost=0
# scanalyzer     13         ok  (ok)            2 ops with cost=3 and 2 ops with cost=1
# sokoban        9          nok (nok)           2 ops with cost=1 and 1 op with cost=0
# transport      630        nok (nok)           2 ops with cost=1 and 1 op with fcost
# visitall       3          ok  (ok)            1 op with cost=1
# woodworking    195        nok (ok)            ops with different costs and fcosts

#./fast-downward.py $DOWNWARD_BENCHMARKS/barman-opt11-strips/pfile01-001.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/nomystery-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/openstacks-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/pegsol-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/scanalyzer-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/sokoban-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/transport-opt11-strips/p01.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem02-full.sas --search "$opts"
#./fast-downward.py $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts"
################################################################################
# Delete-relaxation constraints
#opts="astar(lmcut())"
#./fast-downward.py $DOWNWARD_BENCHMARKS/simplegripper/prob01.pddl --search "$opts"
################################################################################
# SAT SEQUENCING
#./fast-downward.py $DOWNWARD_BENCHMARKS/simplegripper/prob03.pddl --search "$opts"
################################################################################

rm sas_plan

################################################################################
./build.py
################################################################################
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=blind)"
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p11.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p11.sas --search "$opts"
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"

# T3 seq lmcut: INFEASIBLE
opts="socwsss_cplex(constraint_type=3, constraint_generators=seq, heuristic=lmcut)"
# optimal plan cost = 195
./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts"

# T1 oc seq landmarks glcs: INFEASIBLE
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq_landmarks_glcs, heuristic=operatorcounting)"
# optimal plan cost = 375821
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p01.sas --search "$opts"
# optimal plan cost = 519232
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p05.sas --search "$opts"
# optimal plan cost = 751642
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts"

# T3 oc seq landmarks: NOT OPTIMAL
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks, heuristic=operatorcounting)"
# optimal plan cost = 225
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p02.sas --search "$opts"

# T2 oc seq landmarks glcs: NOT OPTIMAL
#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq_landmarks_glcs, heuristic=operatorcounting)"
# optimal plan cost = 3
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem02-full.sas --search "$opts"
# optimal plan cost = 8
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"
# optimal plan cost = 6
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts"
# optimal plan cost = 15
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts"
# optimal plan cost = 11
#./fast-downward.py --overall-memory-limit 3584M $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-half.sas --search "$opts"
#################################################################################
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
# SAT SEQUENCING
#./fast-downward.py $DOWNWARD_BENCHMARKS/simplegripper/prob03.pddl --search "$opts"
################################################################################
rm sas_plan

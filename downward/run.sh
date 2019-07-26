################################################################################
./build.py
run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 5m"
################################################################################
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=blind)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p11.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p11.sas
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas

# 4 - T3 seq lmcut: INFEASIBLE [TIMEOUT]
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts" # optimal plan cost = 195

# 5 - T3 oc seq landmarks: NOT OPTIMAL [TIMEOUT]
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p02.sas --search "$opts" # optimal plan cost = 225

# 6 - T1 oc h+ flow: EMPTY PLAN
#opts="socwsss_cplex(constraint_type=1, constraint_generators=h+_flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts" # optimal plan cost = 1270874

# 6 - T2 oc h+ flow: EMPTY PLAN
#opts="socwsss_cplex(constraint_type=2, constraint_generators=h+_flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts" # optimal plan cost = 1215839
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts" # optimal plan cost = 1270874

# 6 - T3 oc h+ flow: EMPTY PLAN
#opts="socwsss_cplex(constraint_type=3, constraint_generators=h+_flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts" # optimal plan cost = 1215839
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts" # optimal plan cost = 1270874

# 7 - T1 oc seq landmarks glcs: INFEASIBLE [ALL SOLVED]
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq_landmarks_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p01.sas --search "$opts" # optimal plan cost = 375821
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p05.sas --search "$opts" # optimal plan cost = 519232
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642

# 7 - T2 oc seq landmarks glcs: NOT OPTIMAL [ALL SOLVED]
#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq_landmarks_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem02-full.sas --search "$opts" # optimal plan cost = 3
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts" # optimal plan cost = 8
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" # optimal plan cost = 6
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" # optimal plan cost = 15
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-half.sas --search "$opts" # optimal plan cost = 11

# 7 - T3 oc seq landmarks glcs: NOT OPTIMAL [ALL SOLVED]
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" # optimal plan cost = 6
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" # optimal plan cost = 15
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-full.sas --search "$opts" # optimal plan cost = 24
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts" # optimal plan cost = 18
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem06-full.sas --search "$opts" # optimal plan cost = 35

# 8 - T1 oc h+ flow: EMPTY PLAN
#opts="socwsss_cplex(constraint_type=1, constraint_generators=h+_flow_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts" # optimal plan cost = 1270874

# 8 - T2 oc h+ flow: EMPTY PLAN
#opts="socwsss_cplex(constraint_type=2, constraint_generators=h+_flow_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts" # optimal plan cost = 1215839
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts" # optimal plan cost = 1270874

# 8 - T2 oc h+ flow: NOT OPTIMAL [ALL SOLVED]
#opts="socwsss_cplex(constraint_type=2, constraint_generators=h+_flow_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" # optimal plan cost = 6

# 8 - T3 oc h+ flow: EMPTY PLAN
#opts="socwsss_cplex(constraint_type=3, constraint_generators=h+_flow_glcs, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts" # optimal plan cost = 751642
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts" # optimal plan cost = 1270874
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-half.sas --search "$opts" # optimal plan cost = 11

# 8 - T3 oc h+ flow: NOT OPTIMAL [ALL SOLVED]
opts="socwsss_cplex(constraint_type=3, constraint_generators=h+_flow_glcs, heuristic=operatorcounting)"
$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" # optimal plan cost = 6
#################################################################################
#opts="astar(lmcut())"
#opts="astar(operatorcounting([lmcut_constraints()]))"
#opts="socwsss_cplex(constraint_type=1, constraint_generators=landmarks, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts" # optimal plan cost = 56
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p02.sas --search "$opts" # optimal plan cost = 48
#################################################################################
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=blind)"
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
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
rm -f sas_plan

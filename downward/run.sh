##############################################################################
#opts="socwsss_cplex()"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas
################################################################################
./build.py
run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 1m"
################################################################################
#opts="astar(lmcut())"
#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq_landmarks, heuristic=lmcut)"
#$run_pref p01.pddl --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#################################################################################
# Test relaxed exploration action landmarks
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#################################################################################
# Test SAT sequencing
#opts="socwsss_cplex(constraint_type=3)"
opts="socwsss_cplex(sat_seq=true)"
$run_pref $DOWNWARD_BENCHMARKS/simplegripper/robot_at_left.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/simplegripper/robot_at_left.sas
#################################################################################
# CPLEX exception
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq_landmarks)"
#$run_pref $DOWNWARD_BENCHMARKS/_blocks/probBLOCKS-4-0.sas --search "$opts"
#################################################################################
# Test MIP start
#opts="eager_greedy([lmcut])"
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq_landmarks, heuristic=lmcut, mip_start=true)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem08-half.sas --search "$opts" # optimal solution: 43
#################################################################################
#opts="socwsss_cplex(sat_seq=true, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem06-full.sas --search "$opts"

#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq_landmarks)"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts" # optimal solution: 195

#opts="socwsss_cplex(constraint_type=1, constraint_generators=h+_flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts"
#################################################################################
# Large number of operators
#opts="socwsss_cplex(constraint_type=3, heuristic=blind)"
#opts="socwsss_cplex(constraint_type=3, heuristic=lmcut)"
#opts="socwsss_cplex(sat_seq=true)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts" # optimal solution: 56
################################################################################
rm -f sas_plan
#################################################################################

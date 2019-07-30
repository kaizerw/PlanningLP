################################################################################
./build.py
run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 1m"
################################################################################
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=blind)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas
#################################################################################
#opts="astar(lmcut())"
#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq_landmarks, heuristic=lmcut)"
#$run_pref p01.pddl --search "$opts"
#################################################################################
# Test SAT sequencing
#opts="astar(lmcut())"
opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=blind)"
$run_pref $DOWNWARD_BENCHMARKS/simplegripper/prob03.pddl --search "$opts"
#################################################################################
rm -f sas_plan
#################################################################################

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
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#################################################################################
# seq T2: infeasible
#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem06-full.sas --search "$opts" # optimal solution: 35
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem08-full.sas --search "$opts" # optimal solution: 63
#################################################################################
# seq T3: infeasible
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p03.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p16.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-half.sas --search "$opts" # optimal solution: 11
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem06-half.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem11-half.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p02.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p03.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p04.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p05.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p06.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p07.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p08.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p09.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p11.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p14.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p17.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p18.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p20.sas --search "$opts"
#################################################################################
# landmarks T2: solution not found
#opts="socwsss_cplex(constraint_type=2, constraint_generators=landmarks, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-full.sas --search "$opts"
#################################################################################
# landmarks T3: infeasible
#opts="socwsss_cplex(constraint_type=3, constraint_generators=landmarks, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem02-full.sas --search "$opts" # optimal solution = 3
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" # optimal solution = 6
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-half.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem06-half.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem07-half.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p06.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p07.sas --search "$opts"
#################################################################################
# h+ T1: solution not found
#opts="socwsss_cplex(constraint_type=1, constraint_generators=h+, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p03.sas --search "$opts"
#################################################################################
# h+ T3: infeasible
#opts="socwsss_cplex(constraint_type=3, constraint_generators=h+, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p03.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p09.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p12.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p17.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p18.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p19.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" # optimal solution = 6
#################################################################################
# flow T1: cplex exception (overflow)
#opts="socwsss_cplex(constraint_type=1, constraint_generators=flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p20.sas --search "$opts"
#################################################################################
# flow T2: infeasible
#opts="socwsss_cplex(constraint_type=2, constraint_generators=flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p14.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem11-full.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p06.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p12.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p13.sas --search "$opts"
#################################################################################
# flow T2: solution not found
#opts="socwsss_cplex(constraint_type=2, constraint_generators=flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p03.sas --search "$opts"
#################################################################################
# flow T3: infeasible
#opts="socwsss_cplex(constraint_type=3, constraint_generators=flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p14.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p01.sas --search "$opts" # optimal solution = 375821
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p03.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p05.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p08.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p09.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p10.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p11.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p12.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p17.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p18.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p19.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/parcprinter-opt11-strips/p20.sas --search "$opts"
#################################################################################
# flow T3: not optimal solution
#opts="socwsss_cplex(constraint_type=3, constraint_generators=flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-half.sas --search "$opts" optimal solution = 6
#################################################################################
# flow T3: solution not found
#opts="socwsss_cplex(constraint_type=3, constraint_generators=flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-full.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts"
#################################################################################
# Test relaxed exploration action landmarks
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#################################################################################
#opts="socwsss_cplex(constraint_type=2, constraint_generators=seq_landmarks, heuristic=lmcut)"
#$run_pref p01.pddl --search "$opts"
#################################################################################
# Test SAT sequencing
#opts="astar(lmcut())"
#opts="socwsss_cplex(constraint_type=1, constraint_generators=seq, heuristic=blind)"
opts="socwsss_cplex(sat_seq=true)"
$run_pref $DOWNWARD_BENCHMARKS/simplegripper/prob01.pddl --search "$opts"
#################################################################################
rm -f sas_plan
#################################################################################

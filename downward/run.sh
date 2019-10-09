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
#opts="socwsss_cplex(constraint_type=3, mip_start=false)"
#opts="socwsss_cplex(sat_seq=true, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/simplegripper/robot_at_left.sas --search "$opts"
#################################################################################
# Run visitall without operator counting constraints and initial greedy solution

#declare -a instances=("problem02-half" "problem03-half" "problem04-half" "problem05-half" "problem02-full" "problem03-full" "problem04-full" "problem05-full")
#opts="socwsss_cplex(constraint_type=3, constraint_generators=_, mip_start=false)"
#rm -rf logs_t3 && mkdir logs_t3
#for i in ${instances[@]}; do
#	echo T3-$i
#	$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/$i.sas --search "$opts" > logs_t3/$i-output1 2> logs_t3/$i-output2
#done
#opts="socwsss_cplex(sat_seq=true, constraint_generators=_, mip_start=false)"
#rm -rf logs_sat && mkdir logs_sat
#for i in ${instances[@]}; do
#	echo SAT-$i
#	$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/$i.sas --search "$opts" > logs_sat/$i-output1 2> logs_sat/$i-output2
#done

#opts="socwsss_cplex(constraint_type=3, constraint_generators=_, mip_start=false)"
#opts="socwsss_cplex(sat_seq=true, constraint_generators=_, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem02-full.sas --search "$opts"

#opts="socwsss_cplex(sat_seq=true, constraint_generators=_, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/p04_full_output1 2> "$d2"/p04_full_output2
#opts="socwsss_cplex(constraint_type=3, constraint_generators=_, heuristic=lmcut, hstar=true, mip_start=false)"


d1="logs"
rm -rf "$d1" && mkdir "$d1"
opts_t3="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=8)"
opts_sat="socwsss_cplex(sat_seq=true, constraint_generators=seq_landmarks, cstar=8)"
opts_best="socwsss_cplex(best_seq=true, constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=8)"
$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_t3" > "$d1"/t3_out1 2> "$d1"/t3_out2
$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_sat" > "$d1"/sat_out1 2> "$d1"/sat_out2
$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_best" > "$d1"/best_out1 2> "$d1"/best_out2


#opts="socwsss_cplex(constraint_type=3, constraint_generators=_, heuristic=hstar_search_lmcut, mip_start=false, callbacks=lazy_heuristic_usercut)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss_cplex(sat_seq=true, constraint_generators=_, heuristic=lmcut, hstar_search=true, mip_start=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss_cplex(best_seq=true, constraint_type=3, constraint_generators=_, heuristic=lmcut, hstar_search=true, mip_start=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks, hstar_pdb=true, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss_cplex(sat_seq=true, constraint_generators=seq_landmarks, hstar_pdb=true, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss_cplex(best_seq=true, constraint_type=3, constraint_generators=seq_landmarks, hstar_pdb=true, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss_cplex(sat_seq=true, constraint_generators=seq_landmarks, callbacks=lazy, mip_loop=true)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts"


# fast increment
#d1="fast_increment"
#d2="$d1/sat"
#d3="$d1/t3"
#rm -rf "$d1" && mkdir "$d1" && mkdir "$d2" && mkdir "$d3"
#opts="socwsss_cplex(sat_seq=true, constraint_generators=_, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/p04_full_output1 2> "$d2"/p04_full_output2
#opts="socwsss_cplex(constraint_type=3, constraint_generators=_, heuristic=lmcut, hstar=true, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts" > "$d3"/p03_full_output1 2> "$d3"/p03_full_output2

# seqs_lmcut_greater_blind
#d1="seqs_lmcut_greater_blind"
#d2="$d1/p04_full"
#d3="$d1/p05_half"
#rm -rf "$d1" && mkdir "$d1" && mkdir "$d2" && mkdir "$d3"
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks, mip_start=false, heuristic=blind)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/blind_output1 2> "$d2"/blind_output2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts" > "$d3"/blind_output1 2> "$d3"/blind_output2
#opts="socwsss_cplex(constraint_type=3, constraint_generators=seq_landmarks, mip_start=false, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/lmcut_output1 2> "$d2"/lmcut_output2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts" > "$d3"/lmcut_output1 2> "$d3"/lmcut_output2
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

run_pref="./fast-downward.py --overall-memory-limit 4096M --overall-time-limit 30m"

opts="socwsss(heuristic=hstar_pdb, print_log=false)"
export CPLEXHOME="/opt/ibm/ILOG/CPLEX_Studio128" && export DOWNWARD_CPLEX_ROOT="/opt/ibm/ILOG/CPLEX_Studio128/cplex"
rm -rf builds && ./build.py
$run_pref $DOWNWARD_BENCHMARKS/gripper-hstar/prob05.sas --search "$opts" > log_gripper_hstar_cplex1208.txt
export CPLEXHOME="/home/wlkaizer/.cplex1210" && export DOWNWARD_CPLEX_ROOT="/home/wlkaizer/.cplex1210/cplex"
rm -rf builds && ./build.py
$run_pref $DOWNWARD_BENCHMARKS/gripper-hstar/prob05.sas --search "$opts" > log_gripper_hstar_cplex1210.txt

opts="socwsss(heuristic=lmcut, print_log=false)"
export CPLEXHOME="/opt/ibm/ILOG/CPLEX_Studio128" && export DOWNWARD_CPLEX_ROOT="/opt/ibm/ILOG/CPLEX_Studio128/cplex"
rm -rf builds && ./build.py
$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts" > log_blocks_lmcut_cplex1208.txt
export CPLEXHOME="/home/wlkaizer/.cplex1210" && export DOWNWARD_CPLEX_ROOT="/home/wlkaizer/.cplex1210/cplex"
rm -rf builds && ./build.py
$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts" > log_blocks_lmcut_cplex1210.txt

opts="socwsss(heuristic=operatorcounting, operator_counting_constraints=seq_landmarks, print_log=false)"
export CPLEXHOME="/opt/ibm/ILOG/CPLEX_Studio128" && export DOWNWARD_CPLEX_ROOT="/opt/ibm/ILOG/CPLEX_Studio128/cplex"
rm -rf builds && ./build.py
$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts" > log_blocks_oc_cplex1208.txt
export CPLEXHOME="/home/wlkaizer/.cplex1210" && export DOWNWARD_CPLEX_ROOT="/home/wlkaizer/.cplex1210/cplex"
rm -rf builds && ./build.py
$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts" > log_blocks_oc_cplex1210.txt

##############################################################################
#opts="socwsss()"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#valgrind builds/release/bin/downward --search "$opts" < $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas
################################################################################
#./build.py
#run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 30m"
################################################################################
#opts="astar(lmcut())"
#opts="socwsss(constraint_type=2, constraint_generators=seq_landmarks, heuristic=lmcut)"
#$run_pref p01.pddl --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#################################################################################
# Test relaxed exploration action landmarks
#opts="socwsss(constraint_type=1, constraint_generators=seq, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#################################################################################
# Test SAT sequencing
#opts="socwsss(constraint_type=3, mip_start=false)"
#opts="socwsss(sat_seq=true, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/simplegripper/robot_at_left.sas --search "$opts"
#################################################################################
# Run visitall without operator counting constraints and initial greedy solution

#declare -a instances=("problem02-half" "problem03-half" "problem04-half" "problem05-half" "problem02-full" "problem03-full" "problem04-full" "problem05-full")
#opts="socwsss(constraint_type=3, constraint_generators=_, mip_start=false)"
#rm -rf logs_t3 && mkdir logs_t3
#for i in ${instances[@]}; do
#	echo T3-$i
#	$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/$i.sas --search "$opts" > logs_t3/$i-output1 2> logs_t3/$i-output2
#done
#opts="socwsss(sat_seq=true, constraint_generators=_, mip_start=false)"
#rm -rf logs_sat && mkdir logs_sat
#for i in ${instances[@]}; do
#	echo SAT-$i
#	$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/$i.sas --search "$opts" > logs_sat/$i-output1 2> logs_sat/$i-output2
#done

#opts="socwsss(constraint_type=3, constraint_generators=_, mip_start=false)"
#opts="socwsss(sat_seq=true, constraint_generators=_, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem02-full.sas --search "$opts"



#################################################################################
#run_pref="./fast-downward.py --overall-memory-limit 4096M --overall-time-limit 30m"

#rm -rf logs && mkdir logs && mkdir logs/blind && mkdir logs/lmcut && mkdir logs/oc && mkdir logs/hstar && mkdir logs/sat

#opts="astar(blind())"
#opts="astar(lmcut())"

#opts="socwsss(heuristic=blind)"
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob07.sas --search "$opts" > logs/blind/1.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob18.sas --search "$opts" > logs/blind/2.txt

#opts="socwsss(heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts" > logs/lmcut/1.txt
#$run_pref $DOWNWARD_BENCHMARKS/hiking-opt14-strips-hstar/ptesting-1-2-3.sas --search "$opts" > logs/lmcut/2.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob07.sas --search "$opts" > logs/lmcut/3.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob18.sas --search "$opts" > logs/lmcut/4.txt

#opts="socwsss(heuristic=operatorcounting, operator_counting_constraints=seq_landmarks)"
#$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts" > logs/oc/1.txt
#$run_pref $DOWNWARD_BENCHMARKS/hiking-opt14-strips-hstar/ptesting-1-2-3.sas --search "$opts" > logs/oc/2.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob07.sas --search "$opts" > logs/oc/3.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob18.sas --search "$opts" > logs/oc/4.txt

#opts="socwsss(heuristic=hstar_pdb, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/gripper-hstar/prob04.sas --search "$opts" > logs/hstar/1.txt
#$run_pref $DOWNWARD_BENCHMARKS/gripper-hstar/prob05.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob07.sas --search "$opts" > logs/hstar/3.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob18.sas --search "$opts" > logs/hstar/4.txt

#opts="socwsss(sat_seq=true)"
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob07.sas --search "$opts" > logs/sat/1.txt
#$run_pref $DOWNWARD_BENCHMARKS/mystery-hstar/prob18.sas --search "$opts" > logs/sat/2.txt
#################################################################################



#opts="socwsss(sat_seq=true, constraint_generators=_, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/p04_full_output1 2> "$d2"/p04_full_output2
#opts="socwsss(constraint_type=3, constraint_generators=_, heuristic=lmcut, hstar=true, mip_start=false)"


#d1="logs/logs_p03"
#rm -rf "$d1" && mkdir -p "$d1"
#opts_t3="socwsss(constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=8)"
#opts_sat="socwsss(sat_seq=true, constraint_generators=seq_landmarks, cstar=8)"
#opts_best="socwsss(best_seq=true, constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=8)"
#opts_min="socwsss(best_seq=true, minimal_cut=true, constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=8)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_t3" > "$d1"/t3_out1 2> "$d1"/t3_out2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_sat" > "$d1"/sat_out1 2> "$d1"/sat_out2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_best" > "$d1"/best_out1 2> "$d1"/best_out2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts_min" > "$d1"/min_out1 2> "$d1"/min_out2

#d1="logs/logs_p04"
#rm -rf "$d1" && mkdir -p "$d1"
#opts_t3="socwsss(constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=15)"
#opts_sat="socwsss(sat_seq=true, constraint_generators=seq_landmarks, cstar=15)"
#opts_best="socwsss(best_seq=true, constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=15)"
#opts_min="socwsss(best_seq=true, minimal_cut=true, constraint_type=3, constraint_generators=seq_landmarks, heuristic=hstar_pdb, cstar=15)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts_t3" > "$d1"/t3_out1 2> "$d1"/t3_out2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts_sat" > "$d1"/sat_out1 2> "$d1"/sat_out2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts_best" > "$d1"/best_out1 2> "$d1"/best_out2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts_min" > "$d1"/min_out1 2> "$d1"/min_out2

#d1="logs/p03_full"
#d2="logs/p04_full"
#rm -rf "$d1" && mkdir -p "$d1"
#rm -rf "$d2" && mkdir -p "$d2"
#opts="socwsss(minimal_seq=true, constraint_generators=seq_landmarks, cstar=8)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts" > "$d1"/out1 2> "$d1"/out2
#opts="socwsss(minimal_seq=true, constraint_generators=seq_landmarks, cstar=15)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/out1 2> "$d2"/out2

#opts="socwsss(two_seq=true, print_log=true, constraint_generators=landmarks_h+_flow, cstar=8)"
#opts="socwsss(sat_loop=true, cstar=8)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss(constraint_type=3, ignore_zero_cost_ops=true, print_log=true, constraint_generators=landmarks_h+_flow, cstar=8)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"

#opts="astar(operatorcounting([lmcut_constraints()]))"
#opts="socwsss(constraint_type=3, print_log=true, constraint_generators=landmarks_h+_seq, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-epsilon/p01.sas --search "$opts"
###############################################################################################################################################################################################################
# CPLEX error during SAT sequencing
#opts="socwsss(sat_seq=true, constraint_generators=seq_landmarks, add_cstar_constraint=true, add_yt_bound=false, callbacks=lazy_heuristic, cstar=550)"
#$run_pref $DOWNWARD_BENCHMARKS/transport-selected/p04.sas --search "$opts" > output1 2> output2

#run_pref="./fast-downward.py --overall-memory-limit 3584M"
#opts="socwsss(sat_seq=true, constraint_generators=seq_landmarks, add_cstar_constraint=true, add_yt_bound=false, callbacks=lazy_usercut_heuristic, cstar=120)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem11-full.sas --search "$opts" > output1 2> output2

# CPLEX error during SAT sequencing
# Same error using heuristic=lmcut and heuristic=hstar_pdb
#opts="socwsss(best_seq=true, constraint_type=3, constraint_generators=seq_landmarks, heuristic=blind, add_cstar_constraint=true, add_yf_bound=false, add_yt_bound=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/scanalyzer-selected/p02.sas --search "$opts" > output1 2> output2
#$run_pref $DOWNWARD_BENCHMARKS/scanalyzer-selected/p03.sas --search "$opts" > output1 2> output2

# memout: p01: after restarting, p04: during A* sequencing
#opts="socwsss(constraint_type=3, constraint_generators=seq_landmarks, heuristic=blind, add_cstar_constraint=true, add_yf_bound=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-selected/p01.sas --search "$opts" > output1 2> output2
#$run_pref $DOWNWARD_BENCHMARKS/elevators-selected/p04.sas --search "$opts" > output1 2> output2

# memout: p04: after restarting
#opts="socwsss(constraint_type=3, constraint_generators=seq_landmarks, heuristic=lmcut, add_cstar_constraint=true, add_yf_bound=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-selected/p04.sas --search "$opts" > output1 2> output2


###############################################################################################################################################################################################################

#opts="astar_optimal_plans(pdb(manual_pattern([0, 1, 2, 3, 4, 5, 6, 7, 8])))"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss(constraint_type=3, constraint_generators=_, heuristic=hstar_search_lmcut, mip_start=false, callbacks=lazy_heuristic_usercut)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss(sat_seq=true, constraint_generators=_, heuristic=lmcut, hstar_search=true, mip_start=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss(best_seq=true, constraint_type=3, constraint_generators=_, heuristic=lmcut, hstar_search=true, mip_start=false, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss(constraint_type=3, constraint_generators=seq_landmarks, hstar_pdb=true, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss(sat_seq=true, constraint_generators=seq_landmarks, hstar_pdb=true, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"

#opts="socwsss(best_seq=true, constraint_type=3, constraint_generators=seq_landmarks, hstar_pdb=true, callbacks=lazy_heuristic)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts"


#opts="socwsss(sat_seq=true, constraint_generators=seq_landmarks, callbacks=lazy, mip_loop=true)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts"


# fast increment
#d1="fast_increment"
#d2="$d1/sat"
#d3="$d1/t3"
#rm -rf "$d1" && mkdir "$d1" && mkdir "$d2" && mkdir "$d3"
#opts="socwsss(sat_seq=true, constraint_generators=_, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/p04_full_output1 2> "$d2"/p04_full_output2
#opts="socwsss(constraint_type=3, constraint_generators=_, heuristic=lmcut, hstar=true, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem03-full.sas --search "$opts" > "$d3"/p03_full_output1 2> "$d3"/p03_full_output2

# seqs_lmcut_greater_blind
#d1="seqs_lmcut_greater_blind"
#d2="$d1/p04_full"
#d3="$d1/p05_half"
#rm -rf "$d1" && mkdir "$d1" && mkdir "$d2" && mkdir "$d3"
#opts="socwsss(constraint_type=3, constraint_generators=seq_landmarks, mip_start=false, heuristic=blind)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/blind_output1 2> "$d2"/blind_output2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts" > "$d3"/blind_output1 2> "$d3"/blind_output2
#opts="socwsss(constraint_type=3, constraint_generators=seq_landmarks, mip_start=false, heuristic=lmcut)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem04-full.sas --search "$opts" > "$d2"/lmcut_output1 2> "$d2"/lmcut_output2
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem05-half.sas --search "$opts" > "$d3"/lmcut_output1 2> "$d3"/lmcut_output2
#################################################################################
# CPLEX exception
#opts="socwsss(constraint_type=1, constraint_generators=seq_landmarks)"
#$run_pref $DOWNWARD_BENCHMARKS/_blocks/probBLOCKS-4-0.sas --search "$opts"
#################################################################################
# Test MIP start
#opts="eager_greedy([lmcut])"
#opts="socwsss(constraint_type=1, constraint_generators=seq_landmarks, heuristic=lmcut, mip_start=true)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem08-half.sas --search "$opts" # optimal solution: 43
#################################################################################
#opts="socwsss(sat_seq=true, mip_start=false)"
#$run_pref $DOWNWARD_BENCHMARKS/visitall-opt11-strips/problem06-full.sas --search "$opts"

#opts="socwsss(constraint_type=2, constraint_generators=seq_landmarks)"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts" # optimal solution: 195

#opts="socwsss(constraint_type=1, constraint_generators=h+_flow, heuristic=operatorcounting)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts"
#$run_pref $DOWNWARD_BENCHMARKS/woodworking-opt11-strips/p01.sas --search "$opts"
#################################################################################
# Large number of operators
#opts="socwsss(constraint_type=3, heuristic=blind)"
#opts="socwsss(constraint_type=3, heuristic=lmcut)"
#opts="socwsss(sat_seq=true)"
#$run_pref $DOWNWARD_BENCHMARKS/elevators-opt11-strips/p01.sas --search "$opts" # optimal solution: 56
################################################################################
rm -f sas_plan
#################################################################################

source use_cplex1208.sh
./build.py
run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 5m"
#opts="socwsss(heuristic=lmcut, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts"
#opts="socwsss(heuristic=operatorcounting, operator_counting_constraints=seq_landmarks, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts"
opts="socwsss(heuristic=hstar_pdb, print_log=true)"
$run_pref $DOWNWARD_BENCHMARKS/gripper-hstar/prob05.sas --search "$opts"

#source use_cplex1210.sh
#./build.py
#run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 5m"
#opts="socwsss(heuristic=operatorcounting, operator_counting_constraints=seq_landmarks, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/0804blocks71/probBLOCKS-7-1.sas --search "$opts"

rm -f sas_plan


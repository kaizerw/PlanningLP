./build.py
run_pref="./fast-downward.py --overall-memory-limit 3584M --overall-time-limit 2m"

# export DOWNWARD_CPLEX_ROOT=/home/vagrant/.cplex1208/cplex
# export CPLEXHOME=/home/vagrant/.cplex1208
#opts="socwsss(heuristic=lmcut, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts"
#opts="socwsss(heuristic=operatorcounting, operator_counting_constraints=seq_landmarks, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/blocks-hstar/probBLOCKS-6-2.sas --search "$opts"
opts="socwsss(heuristic=hstar_pdb, print_log=true)"
$run_pref $DOWNWARD_BENCHMARKS/gripper-hstar/prob05.sas --search "$opts"


# export DOWNWARD_CPLEX_ROOT=/home/vagrant/.cplex1210/cplex
# export CPLEXHOME=/home/vagrant/.cplex1210
#opts="socwsss(heuristic=operatorcounting, operator_counting_constraints=seq_landmarks, print_log=false)"
#$run_pref $DOWNWARD_BENCHMARKS/0804blocks71/probBLOCKS-7-1.sas --search "$opts"

rm -f sas_plan


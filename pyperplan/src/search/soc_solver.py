import os
import sys
import subprocess

from .soc.task import Task
from .soc.plantominisat import PlanToMiniSAT


INPUT = 'input.cnf'
OUTPUT = 'output.txt'
MINISAT = 'minisat'


def soc_solver(task):
    task = Task(task)
    
    #############################################
    # TODO: Set correct values to sum_Co, L, C and Y
    sum_Co, L = 4, 4
    C, Y = {}, {}
    for op in task.operators:
        if op.name in task.action_landmarks:
            C[op.name], Y[op.name] = 1, 1
        else:
            C[op.name], Y[op.name] = 0, 0
    #############################################

    plan_to_minisat = PlanToMiniSAT(task, L, sum_Co, C, Y)    

    base = plan_to_minisat.convert()
    assumptions = plan_to_minisat.get_assumptions()
    encoded = base + assumptions

    plan_to_minisat.make_minisat_input(encoded, INPUT)
    with open('TASK_IN_SAT', 'w') as file:
        print(plan_to_minisat.print(), file=file)

    process = subprocess.Popen([MINISAT, INPUT, OUTPUT],
                               stderr=subprocess.PIPE,
                               stdout=subprocess.PIPE)
    process.wait()
    os.remove(INPUT)

    with open(OUTPUT) as file:
        lines = file.readlines()
        status = lines[0].strip()
        print(status)
        if status == 'SAT':
            print('OPs:')
            for id in lines[1].strip().split(' '):
                id = int(id)
                if id > 0 and id in plan_to_minisat.ids_to_operators:
                    print(plan_to_minisat.ids_to_operators[id])
            
            print('FACTS:')
            for id in lines[1].strip().split(' '):
                id = int(id)
                if id > 0 and id in plan_to_minisat.ids_to_facts:
                    print(plan_to_minisat.ids_to_facts[id])
    os.remove(OUTPUT)

    plan_to_minisat.solve_with_python(base, assumptions)

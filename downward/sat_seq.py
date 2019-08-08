#!/usr/bin/env python

import argparse
from pysat.solvers import Solver


def read_file(base_filename, assumptions_filename):
    base = [[int(i) for i in line.strip().split()]
            for line in open(base_filename).readlines()]
    assumptions = [int(line.strip())
                   for line in open(assumptions_filename).readlines()]
    return base, assumptions


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('base', help='Base filename.', type=str)
    parser.add_argument('assumptions', help='Assumptions filename.', type=str)
    args = parser.parse_args()

    base, assumptions = read_file(args.base, args.assumptions)

    s = Solver('minisat22')
    for clause in base:
        s.add_clause(clause)
    status = s.solve(assumptions)

    if status:
        print('Solved')
        print(s.get_model())
    else:
        print('Conflict')
        print(s.get_core())
    exit(not status)

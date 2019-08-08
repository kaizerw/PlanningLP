#!/usr/bin/env python

import argparse
from pysat.solvers import Solver


def parse(base, assumptions):
    base = [[int(i) for i in line.strip().split()]
            for line in base.strip().split('\n')]
    assumptions = [int(line.strip())
                   for line in assumptions.strip().split('\n')]
    return base, assumptions


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('base', help='Base filename.', type=str)
    parser.add_argument('assumptions', help='Assumptions filename.', type=str)
    args = parser.parse_args()

    base, assumptions = parse(args.base, args.assumptions)

    s = Solver('minisat22')
    for clause in base:
        s.add_clause(clause)
    status = int(s.solve(assumptions))

    if status:
        print(status, ' '.join(str(i) for i in s.get_model()))
    else:
        print(status, ' '.join(str(i) for i in s.get_core()))

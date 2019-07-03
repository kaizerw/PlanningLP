from itertools import count
from .autocountdict import AutoCountDict


class PlanToMiniSAT:

    def __init__(self, task, L, sum_Co, C, Y):
        self.task = task

        self.L = L
        self.sum_Co = sum_Co
        self.C = C
        self.Y = Y

        self.id_generator = count(1)
        self._initialize_ids(self.L)

        self._initialize_assumptions()

    def _initialize_ids(self, layers):
        self.facts_to_ids = {}
        self.ids_to_facts = {}
        self.operators_to_ids = {}
        self.ids_to_operators = {}
        self.all_to_ids = {}
        self.ids_to_all = {}

        for l in range(layers + 2):
            new_ops = {(operator.name, l): next(self.id_generator) 
                       for operator in self.task.operators}
            new_facts = {(fact.name, l): next(self.id_generator)
                         for fact in self.task.facts}
            
            self.operators_to_ids.update(new_ops)
            self.facts_to_ids.update(new_facts)
            self.all_to_ids.update(new_ops)
            self.all_to_ids.update(new_facts)
            
            inv_new_ops = {v: k for k, v in new_ops.items()}
            inv_new_facts = {v: k for k, v in new_facts.items()}

            self.ids_to_operators.update(inv_new_ops)
            self.ids_to_facts.update(inv_new_facts)
            self.ids_to_all.update(inv_new_ops)
            self.ids_to_all.update(inv_new_facts)

    def _initialize_assumptions(self):
        self.assumptions_to_ids = {}

        for fact in self.task.goals:
            name = f'[sum(C(o)) >= {self.L + 1}]_{fact}'
            self.assumptions_to_ids[name] = next(self.id_generator)
        for op in self.task.operators:
            name = f'[{self.Y[op.name]} >= {self.C[op.name] + 1}]_{op.name}'
            self.assumptions_to_ids[name] = next(self.id_generator)

        self.ids_to_assumptions = {v: k for k, v in 
                                   self.assumptions_to_ids.items()}

    def _encode_BCC(self, x, k):
        n = len(x)
        s = AutoCountDict(self.id_generator)

        clauses = [[-x[1], s[1, 1]]]

        for j in range(2, k+1):
            clauses.append([-s[1, j]])
        
        for i in range(2, n):
            clauses.append([-x[i], s[i, 1]])
            clauses.append([-s[i-1, 1], s[i, 1]])
            for j in range(2, k+1):
                clauses.append([-x[i], -s[i-1, j-1], s[i, j]])
                clauses.append([-s[i-1, j], s[i, j]])
            clauses.append([-x[i], -s[i-1, k]])
        
        clauses.append([-x[n], -s[n-1, k]])
        
        return clauses

    def _part1(self, l):
        x = {i: self.operators_to_ids[op.name, l] 
             for i, op in enumerate(self.task.operators, start=1)}
        encoded = self._encode_BCC(x, 1)
        return encoded

    def _part2(self, l):
        encoded = []
        for fact in self.task.facts:
            fact_id = self.facts_to_ids[fact.name, l]
            encoded.append([fact_id, -fact_id])
        return encoded

    def _part3(self):
        encoded = [[self.facts_to_ids[fact, 0]]
                   for fact in self.task.initial_state]
        return encoded

    def _part4(self, l):
        encoded = []
        for op in self.task.operators:
            for fact in op.preconditions:
                op_id = self.operators_to_ids[op.name, l]
                fact_id = self.facts_to_ids[fact, l - 1]
                encoded.append([-op_id, fact_id])
        return encoded

    def _part5(self, l):
        encoded = []
        for op in self.task.operators:
            for fact in op.posconditions:
                op_id = self.operators_to_ids[op.name, l]
                
                if fact.startswith('~'):
                    fact_id = -self.facts_to_ids[fact[1:], l]
                else:
                    fact_id = self.facts_to_ids[fact, l]

                encoded.append([-op_id, fact_id])
        return encoded

    def _part6(self, l):
        encoded = []
        for fact in self.task.facts:
            fact1_id = self.facts_to_ids[fact.name, l + 1]
            fact2_id = self.facts_to_ids[fact.name, l]
            
            clause = [-fact1_id, fact2_id]
            for op in fact.producers:
                # Changed from l to l + 1
                op_id = self.operators_to_ids[op, l + 1]
                clause.append(op_id)
            encoded.append(clause)

            clause = [fact1_id, -fact2_id]
            for op in fact.consumers:
                # Changed from l to l + 1
                op_id = self.operators_to_ids[op, l + 1]
                clause.append(op_id)
            encoded.append(clause)

        return encoded

    def _part7(self):
        encoded = []
        for fact in self.task.goals:
            fact_id = self.facts_to_ids[fact, self.L]
            clause = [fact_id]
            
            # Assumptions
            name = f'[sum(C(o)) >= {self.L + 1}]_{fact}'
            clause.append(self.assumptions_to_ids[name])

            encoded.append(clause)
        return encoded

    def _part8(self):
        encoded = []
        for op in self.task.operators:
            x = {i: self.operators_to_ids[op.name, l] 
                 for i, l in enumerate(range(1, self.L + 1), start=1)}
            clause = self._encode_BCC(x, self.C[op.name])

            # Assumptions
            for c in clause:
                name = f'[{self.Y[op.name]} >= {self.C[op.name] + 1}]_{op.name}'
                c.append(self.assumptions_to_ids[name])
            
            encoded.extend(clause)
        return encoded

    def convert(self):
        encoded = []

        encoded.extend(self._part3())
        encoded.extend(self._part7())
        encoded.extend(self._part8())

        for l in range(1, self.L + 1):
            encoded.extend(self._part1(l))
            encoded.extend(self._part2(l))
            encoded.extend(self._part4(l))
            encoded.extend(self._part5(l))
            encoded.extend(self._part6(l - 1))

        # Forcing assignments to operators
        #encoded.append([self.operators_to_ids['(unstack b a)', 1]])
        #encoded.append([self.operators_to_ids['(put-down b)', 2]])
        #encoded.append([self.operators_to_ids['(pick-up a)', 3]])
        #encoded.append([self.operators_to_ids['(stack a b)', 4]])

        with open('SAT_ENCODING', 'w') as file:
            print('CNF:\n', '\n'.join(str(i) for i in encoded), file=file)
            print(encoded)
            print(self.print_encoded(), file=file)
       
        return encoded

    def get_assumptions(self):
        assumptions = [[-i] for i in self.ids_to_assumptions]
        print('Assumptions:', assumptions)
        return assumptions

    def make_minisat_input(self, encoded, filename):
        with open(filename, 'w') as file:
            for clause in encoded:
                print(' '.join(str(i) for i in clause), '0', file=file)

    def _format(self, part):
        formula = []

        for clause in part:
            clause_str = []
            for var_id in clause:
                var_name = ''
                if var_id < 0:
                    var_name = '~'
                    var_id = abs(var_id)
                if var_id in self.ids_to_all:
                    name, layer = self.ids_to_all[var_id]
                    var_name += name + 'l' +  str(layer)
                else:
                    var_name += f'Aux{var_id}'
                clause_str.append(var_name)

            clause_str = ' | '.join(clause_str).replace('~~', '')
            formula.append(clause_str)
        
        return ' &\n\t'.join(formula)

    def print(self):
        r = ''
        line_size = 80

        r += '*' * line_size + '\n'
        r += f'TASK IN SAT:\n'

        part_3 = self._format(self._part3())
        part_7 = self._format(self._part7())
        part_8 = self._format(self._part8())
        part_6 = self._format(self._part6(0))
        r += f'\nPART 3:\n\t{part_3}\n'
        r += f'\nPART 7:\n\t{part_7}\n'
        r += f'\nPART 8:\n\t{part_8}\n'
        r += f'\nPART 6:\n\t{part_6}\n'

        for l in range(1, self.L + 1):
            r += '*' * line_size

            r += f'\nLAYER {l}:\n'

            part_1 = self._format(self._part1(l))
            part_2 = self._format(self._part2(l))
            part_4 = self._format(self._part4(l))
            part_5 = self._format(self._part5(l))
            r += f'\nPART 1:\n\t{part_1}\n'
            r += f'\nPART 2:\n\t{part_2}\n'
            r += f'\nPART 4:\n\t{part_4}\n'
            r += f'\nPART 5:\n\t{part_5}\n'
            if l < self.L:
                part_6 = self._format(self._part6(l))
                r += f'\nPART 6:\n\t{part_6}\n'
            
            r += '*' * line_size + '\n'
        
        r += '*' * line_size + '\n'

        return r

    def print_encoded(self):
        r = ''
        line_size = 80

        r += '*' * line_size + '\n'
        r += f'SAT ENCODING:\n'

        part_3 = '\n\t'.join(str(i) for i in self._part3())
        part_7 = '\n\t'.join(str(i) for i in self._part7())
        part_8 = '\n\t'.join(str(i) for i in self._part8())
        part_6 = '\n\t'.join(str(i) for i in self._part6(0))
        r += f'\nPART 3:\n\t{part_3}\n'
        r += f'\nPART 7:\n\t{part_7}\n'
        r += f'\nPART 8:\n\t{part_8}\n'
        r += f'\nPART 6:\n\t{part_6}\n'

        for l in range(1, self.L + 1):
            r += '*' * line_size

            r += f'\nLAYER {l}:\n'

            part_1 = '\n\t'.join(str(i) for i in self._part1(l))
            part_2 = '\n\t'.join(str(i) for i in self._part2(l))
            part_4 = '\n\t'.join(str(i) for i in self._part4(l))
            part_5 = '\n\t'.join(str(i) for i in self._part5(l))
            r += f'\nPART 1:\n\t{part_1}\n'
            r += f'\nPART 2:\n\t{part_2}\n'
            r += f'\nPART 4:\n\t{part_4}\n'
            r += f'\nPART 5:\n\t{part_5}\n'
            if l < self.L:
                part_6 = '\n\t'.join(str(i) for i in self._part6(l))
                r += f'\nPART 6:\n\t{part_6}\n'
            
            r += '*' * line_size + '\n'
        
        r += '*' * line_size + '\n'

        return r

    def solve_with_python(self, base, assumptions):
        from .PyMiniSolvers import minisolvers

        S = minisolvers.MinisatSolver()

        for _ in range(1, max(j for i in base for j in i) + 1):
            S.new_var()

        for clause in base:
            S.add_clause(clause)

        S.solve(assumptions=[i[0] for i in assumptions])
        S.implies()
        list(S.get_model())

        print('OPs:')
        for id in S.implies():
            if id > 0 and id in self.ids_to_operators:
                print(self.ids_to_operators[id])
        
        print('FACTS:')
        for id in S.implies():
            if id > 0 and id in self.ids_to_facts:
                print(self.ids_to_facts[id])
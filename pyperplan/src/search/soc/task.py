from .operator import Operator
from .fact import Fact


class Task:

    def __init__(self, task):
        self.name = task.name
        self.initial_state = task.initial_state
        self.goals = task.goals

        self.operators = []
        for operator in task.operators:
            self.operators.append(Operator(operator))

        self.facts = set()
        for fact in task.facts:
            self.facts.add(Fact(fact, self.operators))
        self.facts = frozenset(self.facts)

        self.action_landmarks = self.get_action_landmarks(task)

    def __str__(self):
        s = ''
        s += '\nClass: Task'
        s += '\nName: ' + self.name
        s += '\nInitial state: ' + str(self.initial_state)
        s += '\nGoals: ' + str(self.goals)
        s += '\nOperators: ' + str(self.operators)
        s += '\nFacts: ' + str(self.facts)
        s += '\nAction landmarks: ' + str(self.action_landmarks)
        s += '\n'
        return s

    def __repr__(self):
        return self.__str__()

    def get_action_landmarks(self, task):
        for op in task.operators:
            op.del_effects = set()
        
        landmarks = set()
        for operator in task.operators:
            current_state = task.initial_state
            goal_reached = current_state >= task.goals

            while not goal_reached:
                previous_state = current_state

                for op in task.operators:
                    if op.applicable(current_state) and operator != op:
                        current_state = op.apply(current_state)
                        if current_state >= task.goals:
                            break
                if (previous_state == current_state and
                    not current_state >= task.goals):
                    landmarks.add(operator.name)
                    break

                goal_reached = current_state >= task.goals
        return frozenset(landmarks)

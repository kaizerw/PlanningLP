class Operator:

    def __init__(self, operator):
        self.name = operator.name
        self.preconditions = operator.preconditions
        self.posconditions = set()
        for add_effect in operator.add_effects:
            self.posconditions.add(add_effect)
        for del_effect in operator.del_effects:
            self.posconditions.add('~' + del_effect)
        self.posconditions = frozenset(self.posconditions)

    def __str__(self):
        s = ''
        s += '\n\tClass: Operator'
        s += '\n\tName: ' + self.name
        s += '\n\tPre: ' + str(self.preconditions)
        s += '\n\tPos: ' + str(self.posconditions)
        s += '\n'
        return s

    def __repr__(self):
        return self.__str__()

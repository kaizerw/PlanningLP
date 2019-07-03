class Fact:

    def __init__(self, name, operators):
        self.name = name
        self.producers, self.consumers = set(), set()
        for op in operators:
            if name in op.posconditions:
                self.producers.add(op.name)
            if '~' + name in op.posconditions:
                self.consumers.add(op.name)
        self.producers = frozenset(self.producers)
        self.consumers = frozenset(self.consumers)

    def __str__(self):
        s = ''
        s += '\n\t\tClass: Fact'
        s += '\n\t\tName: ' + self.name
        s += '\n\t\tProducers: ' + ', '.join(self.producers)
        s += '\n\t\tConsumers: ' + ', '.join(self.consumers)
        s += '\n'
        return s

    def __repr__(self):
        return self.__str__()

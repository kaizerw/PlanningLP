class AutoCountDict:
    
    def __init__(self, id_generator):
        self.s = {}
        self.id_generator = id_generator

    def __getitem__(self, i):
        if i not in self.s:
            self.s[i] = next(self.id_generator)
        return self.s[i]

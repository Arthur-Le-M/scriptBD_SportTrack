class Championnat:
    def __init__(self, intitule, niveau):
        self.intitule = intitule
        self.niveau = niveau

    def toString(self):
        return(self.intitule + " / " + self.niveau)
        
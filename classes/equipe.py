class Equipe:
    def __init__(self, generateur, stade):
        self.generateur = generateur
        self.stade = stade
        self.ville = stade.getVille()
        self.nom = self.generateur.generateTeamName(str(self.ville))
        self.couleur = generateur.generateColor()
    
    def toString(self):
        return(self.nom + " / " + self.ville + " / " + self.couleur + " / " + self.stade.toString())

    def getStade(self):
        return self.stade
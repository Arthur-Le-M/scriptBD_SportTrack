
class Joueur:
    def __init__(self, generateur, poste, equipe):
        self.generateur = generateur;
        self.poste = poste
        self.name = generateur.generateHumanName()
        self.surname = generateur.generateHumanSurname()
        self.licence = generateur.generateLicenceFoot()
        self.equipe = equipe
    
    def toString(self):
        return(self.licence + " / " + self.name + " / " + self.surname + " / " + self.poste + " / " + self.equipe.toString())

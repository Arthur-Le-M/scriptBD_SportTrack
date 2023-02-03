
class Joueur:
    def __init__(self, generateur, poste, idEquipe):
        self.generateur = generateur;
        self.poste = poste
        self.name = generateur.generateHumanName()
        self.surname = generateur.generateHumanSurname()
        self.licence = generateur.generateLicenceFoot()
        self.idEquipe = idEquipe
    
    def toString(self):
        return(self.licence + " / " + self.name + " / " + self.surname + " / " + self.poste + " / " + str(self.idEquipe))

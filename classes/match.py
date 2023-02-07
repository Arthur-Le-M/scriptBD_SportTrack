class Match:
    def __init__(self, heure_debut, heure_fin, dom, ext, stade, journee, commentaire=""):
        self.jouer = 0
        self.heure_debut = heure_debut
        self.heure_fin = heure_fin
        self.equipe_dom = dom
        self.equipe_ext = ext
        self.stade = stade
        self.journee = journee
        self.commentaire = commentaire
    
    def toString(self):
        return "Match : " + str(self.heure_debut) + " / " + str(self.heure_fin) + " / " + self.equipe_dom.toString() + " / " + self.equipe_ext.toString() + " / " + self.stade.toString() + " / " + str(self.journee) + " / " + self.commentaire
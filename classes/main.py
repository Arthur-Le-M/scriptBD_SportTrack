#Import
from generateur import *
from joueur import *
from stade import *
from equipe import *
from championnat import *
from participerChampionnat import *
from planificationMatch import *


#Main
def main():
    gen = Generateur()
    s = Stade(gen)
    e = Equipe(gen, s)
    j = Joueur(gen, "ATTAQUANT", e)
    c = Championnat("D1 Pyrénées Atlantiques", "D1")
    pc = ParticiperChampionnat(e, c)

    tabEquipe = []
    for i in range(10):
        sTest = Stade(gen)
        tabEquipe.append(Equipe(gen, sTest))
    
    planif = PlanificationMatch(tabEquipe);
    print(planif.listeMatch[1][0].toString())

    print(j.toString())
    print(pc.toString())
main()
    

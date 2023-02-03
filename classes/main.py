#Import
from generateur import *
from joueur import *
from stade import *
from equipe import *


#Main
def main():
    gen = Generateur()
    s = Stade(gen)
    e = Equipe(gen, s)
    j = Joueur(gen, "ATTAQUANT", e)
    
    print(j.toString())

main()
    

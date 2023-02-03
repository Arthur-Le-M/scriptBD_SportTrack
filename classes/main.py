#Import
from generateur import *
from joueur import *
from stade import *


#Main
def main():
    gen = Generateur()
    j = Joueur(gen, "ATTAQUANT", 45678)
    s = Stade(gen)
    print(j.toString())
    print(s.toString())

main()
    

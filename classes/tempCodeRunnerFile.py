def main():
    gen = Generateur()
    s = Stade(gen)
    e = Equipe(gen, s)
    j = Joueur(gen, "ATTAQUANT", e)
    
    print(j.toString())

main()
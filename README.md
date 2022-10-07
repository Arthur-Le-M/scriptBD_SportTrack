# Script Base de données pour l'application Sport Track

### Explication du but du script
Afin de mener à bien notre [projet "SportTrack"](https://github.com/TitouCoch/SportTrack) de 2ème année de BUT Informatique nous avions besoin d'une bases de données contenant des données sur un district du football amateur en France. Malheureusement impossible de nous en fournir une. **De ce fait nous avons décider de nous en créer une nous même**. En remplire une à la main aurait pris beaucoups de temps et très fatiguant c'est en qualité de bon développeurs que nous sommes que nous avons décidés d'automatiser le remplissage de la base de données.

### La base de données

Ce script à pour but de remplir seulement certaine table de la base de données :


| Nom de la table | Description |
| :--------------- |:---------------:|
| **Stade**  | Données des stades concernée par le district |
| **Equipe**  | Données des équipes concernée par le district |
| **Joueur**  | Données des joueurs concernée par le district |
| **Championnat**  | Données des championnats concernée par le district |
| **participerChampionnat**  | Table d'associations entre Equipe et Championnat |
| **MatchTable**  | Données des rencontres des équipes du district |
| **evenementMatch**  | Les évènements qui se passe pendant un matchs, les buts par exemple |

Les requêtes de créations de ces tables ce trouvent dans [ce fichier](requeteSQL/creationTable.txt).²
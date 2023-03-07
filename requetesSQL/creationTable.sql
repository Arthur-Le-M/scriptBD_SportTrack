CREATE TABLE Stade
(id INTEGER(5) NOT NULL PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
adresse VARCHAR(50) NOT NULL,
code_postal INTEGER(5) NOT NULL,
ville VARCHAR(50) NOT NULL,
Type VARCHAR(25));

CREATE TABLE Equipe
(id INTEGER(5) NOT NULL PRIMARY KEY,
nom VARCHAR(100) NOT NULL,
ville VARCHAR(35) NOT NULL,
id_stade INTEGER(5) NOT NULL,
couleur VARCHAR(7) NOT NULL,
FOREIGN KEY (id_stade) REFERENCES Stade(id));	

CREATE TABLE Joueur
(licence VARCHAR(10) NOT NULL PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
id_equipe INTEGER(5) NOT NULL,
poste VARCHAR(50) NOT NULL,
FOREIGN KEY(id_equipe) REFERENCES Equipe(id)
);

CREATE TABLE Championnat
(id INTEGER(5) NOT NULL PRIMARY KEY,
intitule VARCHAR(25) NOT NULL,
niveau VARCHAR(2) NOT NULL);

CREATE TABLE participerChampionnat
(id_equipe INTEGER(5) NOT NULL,
id_championnat INTEGER(5) NOT NULL,
PRIMARY KEY(id_equipe, id_championnat),
FOREIGN KEY(id_equipe) REFERENCES Equipe(id),
FOREIGN KEY(id_championnat) REFERENCES Championnat(id));

CREATE TABLE MatchTable
(id INTEGER(5) NOT NULL PRIMARY KEY,
jouer TINYINT(1) NOT NULL,
heure_debut DATETIME NOT NULL,
heure_fin DATETIME NOT NULL,
id_equipe_dom INTEGER(5) NOT NULL,
id_equipe_ext INTEGER(5) NOT NULL,
id_stade INTEGER(5) NOT NULL,
journee INTEGER(2),
commentaire TEXT,
FOREIGN KEY(id_equipe_dom) REFERENCES Equipe(id),
FOREIGN KEY(id_equipe_ext) REFERENCES Equipe(id),
FOREIGN KEY(id_stade) REFERENCES Stade(id));

CREATE TABLE EvenementMatch
(id INTEGER(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_match INTEGER(5) NOT NULL,
id_equipe INTEGER(5) NOT NULL,
licence_joueur VARCHAR(10) NOT NULL,
type VARCHAR(15) NOT NULL,
temps INTEGER(2) NOT NULL,
commentaire TEXT,
FOREIGN KEY(id_match) REFERENCES MatchTable(id),
FOREIGN KEY(licence_joueur) REFERENCES Joueur(licence));

CREATE TABLE Inscrit
(id INTEGER(5) NOT NULL PRIMARY KEY AUTO_INCREMENT,
licence VARCHAR(10) NOT NULL,
mail VARCHAR(50) NOT NULL,
mdp VARCHAR(50) NOT NULL,
FOREIGN KEY(licence) REFERENCES Joueur(licence));

CREATE TABLE messages (
  id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  message TEXT NOT NULL,
  id_destinataire INT(11) NOT NULL,
  id_auteur INT(11) NOT NULL,
  date DATETIME NOT NULL,
);

CREATE TABLE Calendrier (
  id INT(6) AUTOINCREMENT PRIMARY KEY,
  categorie VARCHAR(60),
  type VARCHAR(255),
  debut DATETIME,
  fin DATETIME,
  idEquipe INT(6),
  idStade INT(6),
  FOREIGN KEY (idEquipe) REFERENCES Equipe(id),
  FOREIGN KEY (idStade) REFERENCES Stade(id)
);
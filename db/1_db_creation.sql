
CREATE TABLE categorie (
   id_categorie SERIAL PRIMARY KEY,
   nom VARCHAR(50),
   couleur_css_hexadecimal VARCHAR(10)
);

CREATE TABLE sous_categorie (
   id_sous_categorie SERIAL PRIMARY KEY,
   nom VARCHAR(50),
   id_categorie INT NOT NULL,
   couleur_css_hexadecimal VARCHAR(10),
   FOREIGN KEY(id_categorie) REFERENCES categorie(id_categorie)
);

CREATE TABLE supplement (
   id_supplement SERIAL PRIMARY KEY,
   nom VARCHAR(30),
   prix DECIMAL(5,2)
);

CREATE TABLE table_client (
   id_table_client SERIAL PRIMARY KEY
);

CREATE TABLE produit (
   id_produit SERIAL PRIMARY KEY,
   nom VARCHAR(50),
   prix DECIMAL(6,2),
   couleur_css_hexadecimal VARCHAR(10),
   id_sous_categorie INT NOT NULL,
   id_categorie INT NOT NULL,
   FOREIGN KEY(id_sous_categorie) REFERENCES sous_categorie(id_sous_categorie),
   FOREIGN KEY(id_categorie) REFERENCES categorie(id_categorie)
);

CREATE TABLE "user" (
   id_user SERIAL PRIMARY KEY,
   nom VARCHAR(30),
   identifiant INT
);

CREATE TABLE commande (
   id_commande SERIAL PRIMARY KEY,
   id_table_client INT NOT NULL,
   id_user INT NOT NULL,
   UNIQUE(id_table_client),
   FOREIGN KEY(id_table_client) REFERENCES table_client(id_table_client),
   FOREIGN KEY(id_user) REFERENCES "user"(id_user)
);

CREATE TABLE commentaire (
   id_commentaire SERIAL PRIMARY KEY,
   contenu VARCHAR(100),
   id_produit INT NOT NULL,
   UNIQUE(id_produit),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit)
);

CREATE TABLE produits_supplements (
   id_produit INT,
   id_supplement INT,
   PRIMARY KEY(id_produit, id_supplement),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit),
   FOREIGN KEY(id_supplement) REFERENCES supplement(id_supplement)
);

CREATE TABLE commande_produit_supplement (
    id_commande_produit_supplement SERIAL PRIMARY KEY,
    id_commande INT NOT NULL,
    id_produit INT NOT NULL,
    id_supplement INT,
    supplement_associer INT DEFAULT NULL,
    FOREIGN KEY(id_commande) REFERENCES commande(id_commande) ON DELETE CASCADE,
    FOREIGN KEY(id_produit) REFERENCES produit(id_produit) ON DELETE CASCADE,
    FOREIGN KEY(id_supplement) REFERENCES supplement(id_supplement) ON DELETE CASCADE,
    FOREIGN KEY(supplement_associer) REFERENCES commande_produit_supplement(id_commande_produit_supplement) ON DELETE CASCADE
);

CREATE TABLE commande_paye (
    id_commande INT PRIMARY KEY,
    id_table_client INT NOT NULL,
    id_user INT NOT NULL,
    FOREIGN KEY(id_table_client) REFERENCES table_client(id_table_client),
    FOREIGN KEY(id_user) REFERENCES "user"(id_user)
);

CREATE TABLE commande_produit_supplement_paye (
    id_commande_produit_supplement SERIAL PRIMARY KEY,
    id_commande INT NOT NULL,
    id_produit INT NOT NULL,
    id_supplement INT,
    supplement_associer INT DEFAULT NULL,
    FOREIGN KEY(id_commande) REFERENCES commande_paye(id_commande) ON DELETE CASCADE,
    FOREIGN KEY(id_produit) REFERENCES produit(id_produit) ON DELETE CASCADE,
    FOREIGN KEY(id_supplement) REFERENCES supplement(id_supplement) ON DELETE CASCADE,
    FOREIGN KEY(supplement_associer) REFERENCES commande_produit_supplement_paye(id_commande_produit_supplement) ON DELETE CASCADE
);

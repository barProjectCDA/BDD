CREATE TABLE categorie(
   Id_categorie SERIAL,
   nom VARCHAR(50) ,
   couleur_css_hexadecimal VARCHAR(10) ,
   Id_categorie_1 INTEGER,
   PRIMARY KEY(Id_categorie),
   FOREIGN KEY(Id_categorie_1) REFERENCES categorie(Id_categorie)
);

CREATE TABLE supplement(
   Id_supplement SERIAL,
   nom VARCHAR(30) ,
   prix NUMERIC(5,2)  ,
   PRIMARY KEY(Id_supplement)
);

CREATE TABLE table_client(
   Id_table_client SERIAL,
   PRIMARY KEY(Id_table_client)
);

CREATE TABLE produit(
   Id_produit SERIAL,
   nom VARCHAR(50) ,
   prix NUMERIC(5,2)  ,
   couleur_css_hexadecimal VARCHAR(10) ,
   Id_categorie INTEGER NOT NULL,
   PRIMARY KEY(Id_produit),
   FOREIGN KEY(Id_categorie) REFERENCES categorie(Id_categorie)
);

CREATE TABLE bar_user(
   Id_bar_user SERIAL,
   firstName VARCHAR(50) ,
   lastName VARCHAR(50) ,
   username VARCHAR(50) ,
   role VARCHAR(50) ,
   PRIMARY KEY(Id_bar_user)
);

CREATE TABLE commande(
   Id_commande SERIAL,
   Id_table_client INTEGER NOT NULL,
   Id_bar_user INTEGER NOT NULL,
   PRIMARY KEY(Id_commande),
   UNIQUE(Id_table_client),
   FOREIGN KEY(Id_table_client) REFERENCES table_client(Id_table_client),
   FOREIGN KEY(Id_bar_user) REFERENCES bar_user(Id_bar_user)
);

CREATE TABLE commande_produit_supplement(
   Id_commande_produit_supplement SERIAL,
   Id_produit INTEGER NOT NULL,
   Id_commande INTEGER NOT NULL,
   PRIMARY KEY(Id_commande_produit_supplement),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit),
   FOREIGN KEY(Id_commande) REFERENCES commande(Id_commande)
);

CREATE TABLE produit_supplement(
   Id_supplement INTEGER,
   Id_produit INTEGER,
   PRIMARY KEY(Id_supplement, Id_produit),
   FOREIGN KEY(Id_supplement) REFERENCES supplement(Id_supplement),
   FOREIGN KEY(Id_produit) REFERENCES produit(Id_produit)
);

CREATE TABLE supp_par_prod_commande(
   Id_supplement INTEGER,
   Id_commande_produit_supplement INTEGER,
   PRIMARY KEY(Id_supplement, Id_commande_produit_supplement),
   FOREIGN KEY(Id_supplement) REFERENCES supplement(Id_supplement),
   FOREIGN KEY(Id_commande_produit_supplement) REFERENCES commande_produit_supplement(Id_commande_produit_supplement)
);

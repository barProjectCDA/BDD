# BDD


# Documentation des Tables

## Table : `order`

### Description
Une **commande** a deux responsables :
- **Un utilisateur** (user)
- **Une table client**

---

## Table : `order_product_extra`

### Description
Une **ligne de commande** est une liste référençant une et une seule commande.
Chaque ligne correspond à un produit persistant, c’est-à-dire, un produit correspondant à une liste de produits existants dans le menu, mais ayant maintenant une existence physique, par exemple, livrable à table dans une commande.
Sa clé primaire est `id_order_product_extra`.

### Propriétés
- `id_product` (le produit du menu)
- `id_order` (la commande correspondante, référence de la table `order`)
- (...)

---

## Table : `associated_extra`

### Description
Une **ligne d'extra** est une liste référençant un et un seul produit.
Chaque ligne est un extra ou supplément persistant, c’est-à-dire, un produit correspondant à une liste de supplément ou extra existant dans le menu, mais ayant maintenant une existence physique, par exemple, livrable dans ou avec un produit.
Sa clé primaire est `id_extra`.

### Propriétés
- `id_order_product_extra` (le produit persistant dans la ligne de commande)
- (...)
---

## Table : `extra`

### Description
Une ligne correspond à une liste d'extras existants. Théoriquement, n'importe quel extra peut être associé à n'importe quel produit. Mais une table d'affichage existe pour éviter cette association aléatoire.

### Propriétés
- (...)

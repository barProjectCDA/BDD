-- Insertion des catégories principales (mères)
INSERT INTO "category" ("name_category", "css_hexadecimal_color") VALUES
('Cocktails', '#FF5733'),
('Bières', '#FFD700'),
('Vins', '#8B0000'),
('Spiritueux', '#800080'),
('Boissons non alcoolisées', '#00BFFF'),
('Snacks', '#FF4500'),
('Cafés', '#8B4513'),
('Thés & Infusions', '#228B22');

-- Insertion des sous-catégories (filles)
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1") VALUES
('Cocktails classiques', '#E74C3C', 1),
('Cocktails signatures', '#C0392B', 1),
('Bières pression', '#DAA520', 2),
('Bières bouteilles', '#B8860B', 2),
('Vins rouges', '#A52A2A', 3),
('Vins blancs', '#F5DEB3', 3),
('Whiskys', '#6A5ACD', 4),
('Rhums', '#D2691E', 4),
('Boissons gazeuses', '#1E90FF', 5),
('Jus de fruits', '#FFA500', 5),
('Chips & Apéritifs', '#DC143C', 6),
('Fromages & Charcuterie', '#8B0000', 6),
('Espressos', '#3B2F2F', 7),
('Lattes', '#D2B48C', 7),
('Thés verts', '#32CD32', 8),
('Infusions', '#98FB98', 8);

-- Insertion des produits
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category") VALUES
-- Cocktails classiques
('Mojito', 8.50, '#E74C3C', 9),
('Caïpirinha', 8.00, '#E74C3C', 9),
-- Cocktails signatures
('Blue Lagoon', 9.00, '#C0392B', 10),
('Sunset Punch', 9.50, '#C0392B', 10),
-- Bières pression
('Heineken 50cl', 6.00, '#DAA520', 11),
('Guinness 50cl', 7.00, '#DAA520', 11),
-- Bières bouteilles
('Corona', 5.50, '#B8860B', 12),
('Desperados', 6.00, '#B8860B', 12),
-- Vins rouges
('Bordeaux AOC', 12.00, '#A52A2A', 13),
('Côtes du Rhône', 11.50, '#A52A2A', 13),
-- Vins blancs
('Chardonnay', 10.50, '#F5DEB3', 14),
('Sauvignon Blanc', 9.50, '#F5DEB3', 14),
-- Whiskys
('Jack Daniel''s', 8.00, '#6A5ACD', 15),
('Chivas Regal', 9.50, '#6A5ACD', 15),
-- Rhums
('Havana Club 3 ans', 7.50, '#D2691E', 16),
('Diplomatico', 10.00, '#D2691E', 16),
-- Boissons gazeuses
('Coca-Cola', 3.00, '#1E90FF', 17),
('Perrier', 3.50, '#1E90FF', 17),
-- Jus de fruits
('Jus d''orange', 4.00, '#FFA500', 18),
('Jus d''ananas', 4.00, '#FFA500', 18),
-- Snacks
('Chips', 2.50, '#DC143C', 19),
('Plateau charcuterie', 12.00, '#8B0000', 20),
-- Cafés
('Expresso', 2.00, '#3B2F2F', 21),
('Café latte', 3.50, '#D2B48C', 22),
-- Thés & Infusions
('Thé vert', 3.00, '#32CD32', 23),
('Infusion camomille', 3.00, '#98FB98', 24);

-- Insertion des extras
INSERT INTO "extra" ("name_extra", "price_extra") VALUES
('Citron', 0.50),
('Sirop de grenadine', 0.50),
('Sucre de canne', 0.30),
('Glaçons supplémentaires', 0.20),
('Olives', 0.70),
('Tranche d''orange', 0.50),
('Menthe', 0.40),
('Chantilly', 0.80);

-- Association des produits avec les extras
INSERT INTO "product_extra" ("id_extra", "id_product") VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8),
(5, 9), (5, 10), (6, 11), (6, 12), (7, 13), (7, 14), (8, 15), (8, 16);
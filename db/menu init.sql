-- Insert data into categorie table
INSERT INTO categorie (nom, couleur_css_hexadecimal, Id_categorie_1) 
VALUES
('Beverages', '#FF5733', NULL),
('Appetizers', '#33FF57', NULL),
('Main Course', '#3357FF', NULL),
('Desserts', '#FF33FF', NULL),
('Snacks', '#F1C40F', 3);

-- Insert data into supplement table
INSERT INTO supplement (nom, prix) 
VALUES
('Cheese', 2.50),
('Bacon', 1.80),
('Avocado', 3.00),
('Extra Sauce', 1.20),
('Olives', 1.50);

-- Insert data into table_client table
INSERT INTO table_client () 
VALUES
(DEFAULT), (DEFAULT), (DEFAULT), (DEFAULT), (DEFAULT);

-- Insert data into produit table
INSERT INTO produit (nom, prix, couleur_css_hexadecimal, Id_categorie) 
VALUES
('Espresso', 2.50, '#D2691E', 1),
('Americano', 3.00, '#6F4F28', 1),
('Spring Rolls', 5.00, '#FF6347', 2),
('Caesar Salad', 7.00, '#90EE90', 2),
('Grilled Chicken', 10.00, '#A52A2A', 3),
('Pizza Margherita', 12.00, '#FF6347', 3),
('Chocolate Cake', 4.00, '#D2691E', 4),
('Ice Cream', 3.50, '#FFF0F5', 4),
('Chips', 2.00, '#D3D3D3', 5);

-- Insert data into bar_user table
INSERT INTO bar_user (firstName, lastName, username, role) 
VALUES
('John', 'Doe', 'johndoe', 'Bartender'),
('Jane', 'Smith', 'janesmith', 'Manager'),
('Alice', 'Johnson', 'alicejohnson', 'Waitress'),
('Bob', 'Williams', 'bobwilliams', 'Cook'),
('Charlie', 'Brown', 'charliebrown', 'Bartender');

-- Insert data into produit_supplement table
INSERT INTO produit_supplement (Id_supplement, Id_produit)
VALUES
(1, 1),  -- Cheese for Espresso
(2, 2),  -- Bacon for Americano
(3, 3),  -- Avocado for Spring Rolls
(4, 4),  -- Extra Sauce for Caesar Salad
(5, 5),  -- Olives for Grilled Chicken
(1, 6),  -- Cheese for Pizza Margherita
(2, 7),  -- Bacon for Chocolate Cake
(3, 8),  -- Avocado for Ice Cream
(4, 9);  -- Extra Sauce for Chips





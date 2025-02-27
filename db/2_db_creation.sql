-- Main "Bar" category (root category)
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Drinks', '#FF5733', NULL);  -- Main Bar category, no parent

-- Subcategories under "Bar" (id_category = 1)
-- Cocktails subcategory under Bar
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Cocktails', '#33FF57', 1);  -- Parent id_category = 1

-- Beers subcategory under Bar
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Beers', '#3357FF', 1);  -- Parent id_category = 1

-- Wines subcategory under Bar
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Wines', '#5733FF', 1);  -- Parent id_category = 1

-- Subcategories under "Cocktails" (id_category = 2, which is Cocktails)
-- Classic Cocktails subcategory under Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Classic Cocktails', '#FF33A1', 2);  -- Parent id_category = 2

-- Signature Cocktails subcategory under Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Signature Cocktails', '#FF69B4', 2);  -- Parent id_category = 2

-- Non-Alcoholic Cocktails subcategory under Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Non-Alcoholic Cocktails', '#98FB98', 2);  -- Parent id_category = 2

-- Nested Categories under "Classic Cocktails" (id_category = 4, which is Classic Cocktails)


-- Rum-Based Cocktails subcategory under Classic Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Rum-Based Cocktails', '#FF6347', 4);  -- Parent id_category = 4

-- Nested Categories under "Signature Cocktails" (id_category = 5, which is Signature Cocktails)
-- Seasonal Cocktails subcategory under Signature Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Seasonal Cocktails', '#ADFF2F', 5);  -- Parent id_category = 5

-- Signature Cocktails by Bartender subcategory under Signature Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Signature Cocktails by Bartender', '#D2691E', 5);  -- Parent id_category = 5

-- Nested Categories under "Non-Alcoholic Cocktails" (id_category = 6, which is Non-Alcoholic Cocktails)
-- Fruit Juices subcategory under Non-Alcoholic Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Fruit Juices', '#FFD700', 6);  -- Parent id_category = 6

-- Herbal Mocktails subcategory under Non-Alcoholic Cocktails
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Herbal Mocktails', '#98FB98', 6);  -- Parent id_category = 6

-- Subcategories under "Beers" (id_category = 3, which is Beers)
-- Lagers subcategory under Beers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Lagers', '#D2691E', 3);  -- Parent id_category = 3

-- Ales subcategory under Beers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Ales', '#8B4513', 3);  -- Parent id_category = 3

-- Craft Beers subcategory under Beers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Craft Beers', '#FF6347', 3);  -- Parent id_category = 3

-- Nested Categories under "Lagers" (id_category = 7, which is Lagers)
-- Pilsners subcategory under Lagers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Pilsners', '#FFFF00', 7);  -- Parent id_category = 7

-- Helles Lagers subcategory under Lagers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Helles Lagers', '#D3D3D3', 7);  -- Parent id_category = 7

-- Nested Categories under "Ales" (id_category = 8, which is Ales)
-- IPA (India Pale Ales) subcategory under Ales
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('IPA (India Pale Ales)', '#FF4500', 8);  -- Parent id_category = 8

-- Porters subcategory under Ales
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Porters', '#8B0000', 8);  -- Parent id_category = 8

-- Nested Categories under "Craft Beers" (id_category = 9, which is Craft Beers)
-- Local Brews subcategory under Craft Beers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Local Brews', '#8FBC8F', 9);  -- Parent id_category = 9

-- Experimental Brews subcategory under Craft Beers
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES
    ('Experimental Brews', '#DAA520', 9);  -- Parent id_category = 9












-- Main Categories
-- 1. Cocktails
-- 2. Beers
-- 3. Spirits

-- Cocktails
-- Nested categories: Whiskey Cocktails, Gin Cocktails, Rum Cocktails, etc.
-- 1. Whiskey-Based Cocktails
-- 2. Gin-Based Cocktails
-- 3. Rum-Based Cocktails
-- 4. Tequila Cocktails

-- Beers
-- Nested categories: Lagers, Pale Ales, IPAs, Stouts
-- 1. Lagers
-- 2. Pale Ales
-- 3. IPAs
-- 4. Stouts

-- Spirits
-- Nested categories: Whiskey, Vodka, Rum, Gin, Tequila
-- 1. Whiskey
-- 2. Vodka
-- 3. Rum
-- 4. Gin
-- 5. Tequila

-- Insert Categories

-- Cocktails (id_category = 2)
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES 
    ('Whiskey-Based Cocktails', '#8B0000', 2),
    ('Gin-Based Cocktails', '#4682B4', 2),
    ('Rum-Based Cocktails', '#D2691E', 2),
    ('Tequila Cocktails', '#32CD32', 2);

-- Beers (id_category = 3)
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES 
    ('Lagers', '#D3D3D3', 3),
    ('Pale Ales', '#FFD700', 3),
    ('IPAs', '#32CD32', 3),
    ('Stouts', '#8B4513', 3);

-- Spirits (id_category = 4)
INSERT INTO "category" ("name_category", "css_hexadecimal_color", "id_category_1")
VALUES 
    ('Whiskey', '#8B0000', 4),
    ('Vodka', '#B0E0E6', 4),
    ('Rum', '#D2691E', 4),
    ('Gin', '#4682B4', 4),
    ('Tequila', '#32CD32', 4);

-- Insert Products

-- Whiskey-Based Cocktails (id_category = 5)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Old Fashioned', 15.99, '#8B0000', 5),
    ('Whiskey Sour', 13.99, '#A52A2A', 5),
    ('Manhattan', 16.99, '#800000', 5),
    ('Mint Julep', 14.99, '#008080', 5),
    ('Boulevardier', 17.99, '#B22222', 5);

-- Gin-Based Cocktails (id_category = 6)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Gin and Tonic', 9.99, '#4682B4', 6),
    ('Negroni', 14.99, '#00008B', 6),
    ('Tom Collins', 12.99, '#00BFFF', 6),
    ('Aviation', 16.99, '#1E90FF', 6),
    ('French 75', 15.99, '#0000CD', 6);

-- Rum-Based Cocktails (id_category = 7)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Mojito', 11.99, '#D2691E', 7),
    ('Daiquiri', 13.99, '#FF6347', 7),
    ('Piña Colada', 13.99, '#FFEB3B', 7),
    ('Mai Tai', 15.99, '#B8860B', 7),
    ('Cuba Libre', 10.99, '#8B4513', 7);

-- Tequila Cocktails (id_category = 8)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Margarita', 12.99, '#00FF00', 8),
    ('Tequila Sunrise', 14.99, '#FF4500', 8),
    ('Paloma', 13.99, '#FF6347', 8),
    ('Tequila Sour', 16.99, '#32CD32', 8),
    ('Tequila Mojito', 17.99, '#ADFF2F', 8);

-- Lagers (id_category = 9)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Heineken', 7.49, '#32CD32', 9),
    ('Budweiser', 6.99, '#FFD700', 9),
    ('Corona', 6.49, '#FFFF00', 9),
    ('Amstel', 7.99, '#008000', 9),
    ('Beck’s', 8.49, '#4B0082', 9);

-- Pale Ales (id_category = 10)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Sierra Nevada Pale Ale', 8.99, '#FFD700', 10),
    ('Stone Pale Ale', 9.49, '#FFD700', 10),
    ('Lagunitas IPA', 9.99, '#8B4513', 10),
    ('Pale Ale by BrewDog', 7.99, '#B22222', 10),
    ('Magic Hat #9', 8.49, '#8B0000', 10);

-- IPAs (id_category = 11)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Dogfish Head 60 Minute IPA', 9.99, '#32CD32', 11),
    ('Lagunitas IPA', 10.99, '#FF6347', 11),
    ('Stone IPA', 11.99, '#FFD700', 11),
    ('New Belgium IPA', 12.49, '#B0C4DE', 11),
    ('Ballast Point IPA', 13.99, '#8B4513', 11);

-- Stouts (id_category = 12)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Guinness', 6.49, '#8B0000', 12),
    ('Samuel Smith Oatmeal Stout', 9.49, '#A52A2A', 12),
    ('Founders Breakfast Stout', 11.99, '#B22222', 12),
    ('Left Hand Milk Stout', 10.99, '#D2691E', 12),
    ('Brooklyn Black Chocolate Stout', 12.99, '#8B4513', 12);

-- Whiskey (id_category = 13)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Jack Daniel’s', 35.99, '#8B0000', 13),
    ('Glenfiddich 12 Year Old', 45.99, '#006400', 13),
    ('Macallan 12 Year Old', 55.99, '#D2691E', 13),
    ('Jameson Irish Whiskey', 39.99, '#8B4513', 13),
    ('Bulleit Bourbon', 40.99, '#B22222', 13);

-- Vodka (id_category = 14)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Absolut', 25.99, '#B0E0E6', 14),
    ('Grey Goose', 35.99, '#4682B4', 14),
    ('Belvedere', 29.99, '#ADD8E6', 14),
    ('Smirnoff', 22.99, '#87CEEB', 14),
    ('Tito’s Handmade Vodka', 28.99, '#4682B4', 14);

-- Rum (id_category = 15)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Bacardi', 19.99, '#D2691E', 15),
    ('Captain Morgan', 22.99, '#8B4513', 15),
    ('Havana Club', 25.99, '#8B0000', 15),
    ('Mount Gay Rum', 29.99, '#B22222', 15),
    ('Ron Diplomático', 35.99, '#D2691E', 15);

-- Gin (id_category = 16)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Bombay Sapphire', 35.99, '#4682B4', 16),
    ('Tanqueray', 29.99, '#20B2AA', 16),
    ('Hendrick’s Gin', 40.99, '#32CD32', 16),
    ('Plymouth Gin', 44.99, '#6A5ACD', 16),
    ('Beefeater', 26.99, '#9370DB', 16);

-- Tequila (id_category = 17)
INSERT INTO "product" ("name_product", "price_product", "css_hexadecimal_color", "id_category")
VALUES
    ('Patrón Silver', 50.99, '#32CD32', 17),
    ('Don Julio Blanco', 45.99, '#32CD32', 17),
    ('Jose Cuervo Especial', 29.99, '#8B0000', 17),
    ('Espolon Tequila', 38.99, '#FF6347', 17),
    ('Herradura Reposado', 49.99, '#FFD700', 17);




-- Insert Extras (additional items or upgrades for drinks)
INSERT INTO "extra" ("name_extra", "price_extra") 
VALUES
    ('Lemon Twist', 1.99),
    ('Extra Shot', 2.50),
    ('Mint Leaves', 1.00),
    ('Olives', 0.75),
    ('Sugar Rim', 1.50),
    ('Cherry Garnish', 1.20),
    ('Salt Rim', 0.80),
    ('Spicy Jalapeños', 1.75),
    ('Soda Water', 0.50),
    ('Citrus Twist', 1.25);


-- Assigning Extras to Products

-- Margarita (id_product = 9)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Lemon Twist'), 9),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Extra Shot'), 9);

-- Mojito (id_product = 10)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Mint Leaves'), 10),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Sugar Rim'), 10);

-- Old Fashioned (id_product = 1)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Lemon Twist'), 1),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Cherry Garnish'), 1);

-- Whiskey Sour (id_product = 2)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Extra Shot'), 2),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Olives'), 2);

-- Gin and Tonic (id_product = 6)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Lemon Twist'), 6),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Salt Rim'), 6);

-- Pina Colada (id_product = 12)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Citrus Twist'), 12),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Mint Leaves'), 12);

-- Guinness (id_product = 17)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Olives'), 17),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Spicy Jalapeños'), 17);

-- Captain Morgan (id_product = 20)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Soda Water'), 20),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Sugar Rim'), 20);

-- Bacardi (id_product = 22)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Mint Leaves'), 22),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Salt Rim'), 22);

-- Don Julio Blanco (id_product = 25)
INSERT INTO "product_extra" ("id_extra", "id_product") 
VALUES
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Cherry Garnish'), 25),
    ((SELECT "id_extra" FROM "extra" WHERE "name_extra" = 'Lemon Twist'), 25);



INSERT INTO "client_table" DEFAULT VALUES;








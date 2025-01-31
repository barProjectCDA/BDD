CREATE TABLE "category"(
   "id_category" SERIAL,
   "name" VARCHAR(50),
   "css_hexadecimal_color" VARCHAR(10),
   "id_category_1" INTEGER NULL, -- Allowing null in case there's no parent category
   PRIMARY KEY("id_category"),
   FOREIGN KEY("id_category_1") REFERENCES "category"("id_category") ON DELETE SET NULL
);

CREATE TABLE "extra"(
   "id_extra" SERIAL,
   "name" VARCHAR(30),
   "price" NUMERIC(5,2),
   PRIMARY KEY("id_extra")
);

CREATE TABLE "client_table"(
   "id_client_table" SERIAL,
   PRIMARY KEY("id_client_table")
);

CREATE TABLE "product"(
   "id_product" SERIAL,
   "name" VARCHAR(50),
   "price" NUMERIC(5,2),
   "css_hexadecimal_color" VARCHAR(10),
   "id_category" INTEGER NOT NULL,
   PRIMARY KEY("id_product"),
   FOREIGN KEY("id_category") REFERENCES "category"("id_category")
);

CREATE TABLE "bar_user"(
   "id_bar_user" SERIAL,
   "firstName" VARCHAR(50),
   "lastName" VARCHAR(50),
   "username" VARCHAR(50),
   "role" VARCHAR(50),
   "password" VARCHAR(50),
   PRIMARY KEY("id_bar_user")
);

CREATE TABLE "order"(
   "id_order" SERIAL,
   "id_client_table" INTEGER NOT NULL,
   "id_bar_user" INTEGER NOT NULL,
   PRIMARY KEY("id_order"),
   FOREIGN KEY("id_client_table") REFERENCES "client_table"("id_client_table"),
   FOREIGN KEY("id_bar_user") REFERENCES "bar_user"("id_bar_user")
);

CREATE TABLE "order_product_extra"(
   "id_order_product_extra" SERIAL,
   "id_product" INTEGER NOT NULL,
   "id_order" INTEGER NOT NULL,
   PRIMARY KEY("id_order_product_extra"),
   FOREIGN KEY("id_product") REFERENCES "product"("id_product"),
   FOREIGN KEY("id_order") REFERENCES "order"("id_order")
);

CREATE TABLE "product_extra"(
   "id_extra" INTEGER,
   "id_product" INTEGER,
   PRIMARY KEY("id_extra", "id_product"),
   FOREIGN KEY("id_extra") REFERENCES "extra"("id_extra"),
   FOREIGN KEY("id_product") REFERENCES "product"("id_product")
);

CREATE TABLE "associated_extra"(
   "id_extra" INTEGER,
   "id_order_product_extra" INTEGER,
   PRIMARY KEY("id_extra", "id_order_product_extra"),
   FOREIGN KEY("id_extra") REFERENCES "extra"("id_extra"),
   FOREIGN KEY("id_order_product_extra") REFERENCES "order_product_extra"("id_order_product_extra")
);

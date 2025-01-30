CREATE TABLE "category"(
   "Id_category" SERIAL,
   "name" VARCHAR(50),
   "css_hexadecimal_color" VARCHAR(10),
   "Id_category_1" INTEGER NULL, -- Allowing null in case there's no parent category
   PRIMARY KEY("Id_category"),
   FOREIGN KEY("Id_category_1") REFERENCES "category"("Id_category") ON DELETE SET NULL
);

CREATE TABLE "extra"(
   "Id_extra" SERIAL,
   "name" VARCHAR(30),
   "price" NUMERIC(5,2),
   PRIMARY KEY("Id_extra")
);

CREATE TABLE "client_table"(
   "Id_client_table" SERIAL,
   PRIMARY KEY("Id_client_table")
);

CREATE TABLE "product"(
   "Id_product" SERIAL,
   "name" VARCHAR(50),
   "price" NUMERIC(5,2),
   "css_hexadecimal_color" VARCHAR(10),
   "Id_category" INTEGER NOT NULL,
   PRIMARY KEY("Id_product"),
   FOREIGN KEY("Id_category") REFERENCES "category"("Id_category")
);

CREATE TABLE "bar_user"(
   "Id_bar_user" SERIAL,
   "firstName" VARCHAR(50),
   "lastName" VARCHAR(50),
   "username" VARCHAR(50),
   "role" VARCHAR(50),
   "password" VARCHAR(50),
   PRIMARY KEY("Id_bar_user")
);

CREATE TABLE "orders"(
   "Id_order" SERIAL,
   "Id_client_table" INTEGER NOT NULL,
   "Id_bar_user" INTEGER NOT NULL,
   PRIMARY KEY("Id_order"),
   FOREIGN KEY("Id_client_table") REFERENCES "client_table"("Id_client_table"),
   FOREIGN KEY("Id_bar_user") REFERENCES "bar_user"("Id_bar_user")
);

CREATE TABLE "order_product_extra"(
   "Id_order_product_extra" SERIAL,
   "Id_product" INTEGER NOT NULL,
   "Id_order" INTEGER NOT NULL,
   PRIMARY KEY("Id_order_product_extra"),
   FOREIGN KEY("Id_product") REFERENCES "product"("Id_product"),
   FOREIGN KEY("Id_order") REFERENCES "orders"("Id_order")
);

CREATE TABLE "product_extra"(
   "Id_extra" INTEGER,
   "Id_product" INTEGER,
   PRIMARY KEY("Id_extra", "Id_product"),
   FOREIGN KEY("Id_extra") REFERENCES "extra"("Id_extra"),
   FOREIGN KEY("Id_product") REFERENCES "product"("Id_product")
);

CREATE TABLE "associated_extra"(
   "Id_extra" INTEGER,
   "Id_order_product_extra" INTEGER,
   PRIMARY KEY("Id_extra", "Id_order_product_extra"),
   FOREIGN KEY("Id_extra") REFERENCES "extra"("Id_extra"),
   FOREIGN KEY("Id_order_product_extra") REFERENCES "order_product_extra"("Id_order_product_extra")
);

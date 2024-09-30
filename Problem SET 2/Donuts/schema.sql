CREATE TABLE "Ingredients" (
    "id" INTEGER,
    "name" TEXT,
    "price_per_unit" REAL,
    "unit" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Donuts" (
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" TEXT NOT NULL CHECK ("gluten_free" IN ('Y', 'N')),
    "price" REAL,
    PRIMARY KEY ("id")
);

CREATE TABLE "Donutingredients" (
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY("donut_id", "ingredient_id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts"("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "Ingredients"("id")
);

CREATE TABLE "Customers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Orders" (
    "id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("customer_id") REFERENCES "Customers" ("id")
);

CREATE TABLE "Donut_orders" (
    "id" INTEGER,
    "donut_id" INTEGER,
    "quant" INTEGER,
    PRIMARY KEY ("id", "donut_id"),
    FOREIGN KEY ("id") REFERENCES "Orders"("id"),
    FOREIGN KEY ("donut_id") REFERENCES "Donuts" ("id")
);

CREATE TABLE meteorites_temp(
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id") );

.import --csv --skip 1 meteorites.csv meteorites_temp

UPDATE "meteorites_temp"
SET "year" = CASE WHEN "year" = 0 OR "year" LIKE '' THEN NULL ELSE "year" END,
    "mass" = CASE WHEN "mass" = 0 THEN NULL ELSE "mass" END,
    "lat" = CASE WHEN "lat" = 0 THEN NULL ELSE "lat" END,
    "long" = CASE WHEN "long" = 0 THEN NULL ELSE "long" END;

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2),
    "long" = ROUND("long", 2),
    "lat" = ROUND("lat", 2);

CREATE TABLE meteorites(
    "name" TEXT,
    "id" INTEGER,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY ("id") );

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp"
WHERE "nametype" NOT LIKE "%relict%"
ORDER BY "year", "name";

DROP TABLE "meteorites_temp";

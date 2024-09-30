CREATE VIEW "Rural" AS
SELECT * FROM "census" WHERE "locality" LIKE "%rural%";


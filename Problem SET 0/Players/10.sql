SELECT "first_name" AS 'Nombre', "last_name" AS "Apellido" FROM "players" WHERE "birth_year" >= 1999 AND "birth_country" != "USA" AND "first_name" LIKE ('B%')
ORDER BY "birth_year" ASC, "first_name", "last_name";

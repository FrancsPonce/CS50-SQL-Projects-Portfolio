
-- *** The Lost Letter ***

SELECT * FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE address = '900 Somerville Avenue'
        AND "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE address LIKE '2 Fi%'
        )
    ));

SELECT * FROM "addresses" WHERE address LIKE '2 Fi%';

-- *** The Devious Delivery ***

SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

SELECT * FROM "scans" WHERE "package_id"=(
    SELECT "id" FROM "packages"
    WHERE "from_address_id" IS NULL);

SELECT "address_id" FROM "scans" WHERE "package_id"=(
    SELECT "id" FROM "packages"
    WHERE "from_address_id" IS NULL) AND "action" = 'Drop';

SELECT * FROM "addresses" WHERE "id" =
    (SELECT "address_id" FROM "scans"
     WHERE "package_id"=(
        SELECT "id" FROM "packages"
        WHERE "from_address_id" IS NULL) AND "action" = 'Drop');

-- *** The Forgotten Gift ***

SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE address = '109 Tileston Street'
);


SELECT "driver_id" FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE address = '109 Tileston Street'
    )
) ORDER BY "driver_id" DESC LIMIT 1;



SELECT * FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id"= (
    SELECT "id "FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE address = '109 Tileston Street'
    )
        ) ORDER BY "driver_id" DESC LIMIT 1
);


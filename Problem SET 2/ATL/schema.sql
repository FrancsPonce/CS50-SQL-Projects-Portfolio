CREATE TABLE "Passengers" (
    "id"INTEGER,
    "First_name" TEXT,
    "Last_name" TEXT,
    "Age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "Airlines" (
    "id" INTEGER,
   "Name" TEXT,
    "Concourse" TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE check_ins (
    "id" INTEGERS,
    "datetime" DATETIME,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    PRIMARY KEY("id")
    FOREIGN KEY ("passenger_id") REFERENCES "Passengers" ("id")
    FOREIGN KEY ("flight_id") REFERENCES "Flights" ("id")
);

CREATE TABLE Fligths (
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "departing_code" TEXT,
    "arrival_code" TEXT,
    "dp_datetime" DATETIME,
    "av_datetime" DATETIME,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("airline_id") REFERENCES "Airlines"("id")

);

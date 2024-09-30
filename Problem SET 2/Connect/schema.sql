CREATE TABLE "Users" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT UNIQUE,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "Schools" (
    "id" INTEGER,
    "name" TEXT,
    "school_type" TEXT,
    "location" TEXT,
    "founding_year" DATE,
    PRIMARY KEY ("id")
);

CREATE TABLE "Companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);


CREATE TABLE "User_connections" (
    "user_1_id" INTEGER,
    "user_2_id" INTEGER,
    PRIMARY KEY ("user_1_id", "user_2_id"),
    FOREIGN KEY ("user_1_id") REFERENCES "Users" ("id"),
    FOREIGN KEY ("user_2_id") REFERENCES "Users" ("id")
);

CREATE TABLE "School_connections" (
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start" DATE,
    "end" DATE,
    "degree" TEXT,
    PRIMARY KEY ("user_id", "school_id" ),
    FOREIGN KEY ("user_id") REFERENCES "Users" ("id"),
    FOREIGN KEY ("school_id") REFERENCES "Schools" ("id")
);

CREATE TABLE "Companies_connections" (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start" DATE,
    "end" DATE,
    "title" TEXT,
    PRIMARY KEY ("user_id", "company_id" ),
    FOREIGN KEY ("user_id") REFERENCES "Users" ("id"),
    FOREIGN KEY ("company_id") REFERENCES "Companies" ("id")
);

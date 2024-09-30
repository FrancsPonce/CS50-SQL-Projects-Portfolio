CREATE DATABASE "connect";
USE "connect";

CREATE TABLE "Users" (
    "id" INT AUTO_INCREMENT,
    "first_name" VARCHAR(255),
    "last_name" VARCHAR(255),
    "user_name" VARCHAR(255) UNIQUE NOT NULL,
    "password" CHAR (128),
    PRIMARY KEY ("id")
);

CREATE TABLE "Schools"(
    "id" INT AUTO_INCREMENT,
    "name" VARCHAR(255),
    "school_type" ENUM ('Primary', 'Secondary','Higher Education') ,
    "location" VARCHAR(255),
    "founding_year" DATE,
    PRIMARY KEY("id")
);

CREATE TABLE "Companies"(
    "id" INT AUTO_INCREMENT,
    "name" VARCHAR(255),
    "industry" ENUM ('Technology', 'Education','Business') ,
    "location" VARCHAR(255),
    PRIMARY KEY("id")
);

CREATE TABLE "People_connections"(
    "user_id" INT ,
    "user2_id" INT ,
    PRIMARY KEY("user_id", "user2_id"),
    FOREIGN KEY ("user_id") REFERENCES "Users"("user_id"),
    FOREIGN KEY ("user2_id") REFERENCES "Users"("user_id")
);

CREATE TABLE "School_connections"(
    "user_id" INT ,
    "school_id" INT,
    "start_date" DATE,
    "end_date" DATE,
    "degree" VARCHAR(255),
    PRIMARY KEY("user_id", "school_id"),
    FOREIGN KEY ("user_id") REFERENCES "Users"("user_id"),
    FOREIGN KEY ("school_id") REFERENCES "Schools"("school_id")
);

CREATE TABLE "Companies_connections"(
    "user_id" INT ,
    "company_id" INT,
    "start_date" DATE,
    "end_date" DATE,
    PRIMARY KEY("user_id", "school_id"),
    FOREIGN KEY ("user_id") REFERENCES "Users"("user_id"),
    FOREIGN KEY ("company_id") REFERENCES "Companies"("company_id")
);

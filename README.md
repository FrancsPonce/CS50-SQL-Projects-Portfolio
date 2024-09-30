# SQL Course - CS50 SQL Exercises

This repository contains SQL exercises and projects based on a comprehensive SQL curriculum. The exercises are designed to cover a wide range of SQL topics, from basic querying to advanced database design and optimization techniques. Below is an overview of the key topics covered throughout the course.

---

## Table of Contents

- [Lecture 0: Querying](#lecture-0-querying)
  - [Tables](#tables)
  - [Databases](#databases)
  - [SQL (Structured Query Language)](#sql-structured-query-language)
  - [Opening a File with SQLite](#opening-a-file-with-sqlite)
  - [Select](#select)
  - [Limit](#limit)
  - [Where](#where)
  - [Logical Operators](#logical-operators)
  - [Null Values](#null-values)
  - [Pattern Matching (LIKE)](#pattern-matching-like)
  - [Ranges](#ranges)
  - [Order By](#order-by)
  - [SQL Aggregate Functions](#sql-aggregate-functions)
    - [Count](#count)
    - [Average (AVG)](#avg)
    - [Min/Max](#min-max)
    - [Sum](#sum)
    - [Round](#round)
    - [Alias (AS)](#as)
    - [Distinct](#distinct)
  
- [Lecture 1: Relating](#lecture-1-relating)
  - [Relational Databases](#relational-databases)
  - [Entity Relationship Diagrams (ERDs)](#entity-relationship-diagrams-erds)
  - [Keys](#keys)
  - [Subqueries](#subqueries)
  - [Joins](#joins)
    - [Inner Join](#inner-join)
    - [Left Join](#left-join)
    - [Right Join](#right-join)
    - [Full Join](#full-join)
    - [Natural Join](#natural-join)
  - [Set Operations](#set-operations)
    - [Intersect](#intersect)
    - [Union](#union)
    - [Except](#except)
  - [Group By](#group-by)
  - [Having](#having)

- [Lecture 2: Designing](#lecture-2-designing)
  - [Schema Design](#schema-design)
  - [Creating a Schema](#creating-a-schema)
  - [Normalization](#normalization)
  - [Creating Tables](#creating-tables)
  - [Table Constraints](#table-constraints)
  - [Altering Tables](#altering-tables)

- [Lecture 3: Writing](#lecture-3-writing)
  - [Inserting Data](#inserting-data)
  - [Importing Data](#importing-data)
  - [Temporary Tables](#temporary-tables)
  - [Combining Tables with Insert](#combining-tables-with-insert)
  - [Deleting Data](#deleting-data)
  - [Foreign Key Constraints](#foreign-key-constraints)
  - [Updating Data](#updating-data)
  - [Triggers](#triggers)
  - [Using `.old` and `.new`](#using-old-and-new)

- [Lecture 4: Viewing](#lecture-4-viewing)
  - [Views](#views)
  - [Simplifying Queries with Views](#simplifying-queries-with-views)
  - [Common Table Expressions (CTE)](#common-table-expressions-cte)
  - [Temporary Views](#temporary-views)
  - [Triggers with Views](#triggers-with-views)
  - [Soft Deletions](#soft-deletions)

- [Lecture 5: Optimizing](#lecture-5-optimizing)
  - [Indexes](#indexes)
  - [Query Plans](#query-plans)
  - [Covering Index](#covering-index)
  - [B-Tree](#b-tree)
  - [Partial Index](#partial-index)
  - [Vacuum](#vacuum)
  - [Transactions](#transactions)
  - [Concurrency](#concurrency)
  - [Locks](#locks)

- [Lecture 6: Scaling](#lecture-6-scaling)
  - [MySQL](#mysql)
  - [Data Types](#data-types)
  - [Strings and Text](#strings-and-text)
  - [BLOB](#blob)
  - [ENUM and SET](#enum-and-set)
  - [Dates and Times](#dates-and-times)
  - [Real Numbers](#real-numbers)
  - [Stored Procedures](#stored-procedures)
  - [Changing Delimiters](#changing-delimiters)
  - [PostgreSQL](#postgresql)
  - [Access Control (MySQL)](#access-control-mysql)
  - [Creating Users](#creating-users)
  - [Granting Privileges as Root](#granting-privileges-as-root)

---

## Detailed Sections

### Lecture 0: Querying

This lecture introduces the fundamental concepts of SQL querying, covering basic commands such as `SELECT`, `WHERE`, and `LIMIT`. You'll learn how to filter results, match patterns using `LIKE`, and apply aggregate functions like `COUNT` and `AVG` to analyze data.

Key concepts:
- How to open a database file in SQLite
- Filtering with `WHERE` and `NOT`
- Logical operators (`AND`, `OR`)
- Sorting results with `ORDER BY`
- Aggregating data with SQL functions

### Lecture 1: Relating

This lecture delves into relational databases and their structure. You'll explore relationships between tables and how to represent them using Entity Relationship Diagrams (ERDs). Key concepts include:
- Keys (Primary, Foreign)
- Different types of joins (Inner, Left, Right, Full)
- Set operations (Intersect, Union, Except)
- Grouping and filtering with `GROUP BY` and `HAVING`

### Lecture 2: Designing

This section focuses on database schema design, normalization principles, and the creation of tables with appropriate constraints. You will learn to:
- Define schemas and storage classes
- Create tables with constraints (primary key, unique, foreign key)
- Modify and update table structures using `ALTER TABLE`

### Lecture 3: Writing

Learn to write and modify data in SQL databases through `INSERT`, `UPDATE`, and `DELETE` commands. This section also covers how to use foreign keys, triggers, and temporary tables to manage data effectively.

### Lecture 4: Viewing

Discover how to create and use views to simplify complex queries. The lecture also covers Common Table Expressions (CTE), temporary views, and techniques for managing data integrity, such as soft deletions.

### Lecture 5: Optimizing

This lecture introduces advanced database optimization techniques, such as:
- Using indexes for faster queries
- Understanding query execution plans
- Maintaining databases with `VACUUM`
- Managing transactions and handling concurrency issues

### Lecture 6: Scaling

Learn about scaling SQL databases using MySQL and PostgreSQL. Topics include advanced data types (e.g., BLOB, ENUM), stored procedures, and access control mechanisms.

---

## Final Project

The final project consists of designing and implementing a fully functional SQL database. This project tests your ability to apply everything learned throughout the course, including schema design, querying, and optimization techniques.

---

Feel free to explore the individual folders for each lecture to find exercises and solutions!

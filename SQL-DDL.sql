
-- COMMENT      ->      CTRL + / 
-- UN-COMMENT   ->      CTRL + SHIFT + /

------------------------------------------------------------------------
--          DDL - Data Definition Language
------------------------------------------------------------------------
--          ----------------------------------------
--          | Command  | Description               |
--          |----------|---------------------------|
--          | CREATE   | Create a new object       |
--          | ALTER    | Modify existing object    |
--          | DROP     | Delete object permanently |
--          | TRUNCATE | Delete all rows           |
--          ----------------------------------------

-- SYNTAX

--  CREATE DATABASE <database-name>;
--  DATABASE <database-name>;

--  CREATE TABLE <table-name> (<column-name> <type>);
--  DROP TABLE <table-name>;

--  ALTER TABLE <table-name>
--      DROP COLUMN <column-name>;

-- TRUNCATE TABLE <table-name>;

------------------------------------------------------------------------

-- create a new database named schools
CREATE DATABASE schools;

-- drop (delete) a database named schools
DROP DATABASE schools;

------------------------------------------------------------------------

-- create a new database named school
CREATE DATABASE school;

------------------------------------------------------------------------

-- create a table named school
CREATE TABLE student (
    id              INT,                -- column name 'id', type: integer (numeric)
    first_name      VARCHAR(100),       -- type: variable length character (max length 100)
    last_name       VARCHAR(100),
    age             INT,
    roll_number     INT,
    address         VARCHAR(250),
    phone_number    INT,
    language        INT,
    science         INT,
    maths           INT
);

------------------------------------------------------------------------

-- modify student table
ALTER TABLE student
	DROP COLUMN maths,              -- delete maths column
	DROP COLUMN science;            -- delete science column

ALTER TABLE student
	DROP COLUMN phone_number;       -- delete phone_number column

------------------------------------------------------------------------

-- add a new record (row/data) to student table
INSERT INTO student 
	(id, first_name, last_name, age, roll_number, address)      -- list & order of values to add
VALUES
	(1, 'John', 'Smith', 12, 101, 'Chennai');                   -- values

------------------------------------------------------------------------
    
-- deletes all rows (data) of student table
TRUNCATE TABLE student;

------------------------------------------------------------------------

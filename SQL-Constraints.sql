------------------------------------------------------------------------
--                      Constraints
------------------------------------------------------------------------
-- Constraint allows control over data to be stored in table
--          ---------------------------------------------
--          | Command     | Description                 |
--          |-------------|-----------------------------|
--          | NOT NULL    | NULL values not allowed     |
--          | UNIQUE      | Duplicates not allowed      |
--          | CHECK       | Satisfy boolean expression  |
--          | PRIMARY KEY | Unique & Non NULL key       |
--          | FOREIGN KEY | Key referencing primary key |
--          ---------------------------------------------
--
--  SYNTAX

-- CREATE TABLE <table-name> (
--     <column-name> <type> <constraint>,
--     <column-name> <type> <constraint>,
--     <column-name> <type> <constraint>,
-- )

------------------------------------------------------------------------


-- create a table named school
CREATE TABLE student (
    id              INT                 UNIQUE,                 -- duplicates not allowed
    first_name      VARCHAR(100)        NOT NULL,               -- NULL values not allowed       
    last_name       VARCHAR(100),
    age             INT                 CHECK(age > 16),        -- age more than 16 allowed
    roll_number     INT                 UNIQUE NOT NULL,        -- null and duplicates not allowed
    address         VARCHAR(250)
);

-- COMMENT         ->    CTRL + / 
-- UN-COMMENT     ->     CTRL + SHIFT + /

-- ***************** DDL *****************

-- CREATE DATABASE <DATABASE-NAME>
-- DROP DATABASE <DATABASE-NAME>

-- CREATE TABLE <TABLE-NAME> (<COLUMN-NAME> <TYPE>)
-- DROP TABLE <TABLE-NAME>

-- ALTER TABLE <TABLE-NAME>
--	DROP COLUMN <COLUMN-NAME>

------------------------------------

CREATE DATABASE schools; -- choose a singular / plural name as per convention
DROP DATABASE schools;

------------------------------------

CREATE DATABASE school

------------------------------------
    
CREATE TABLE student (
    id              INT,
    first_name      VARCHAR(100),
    last_name       VARCHAR(100),
    age             INT,
    roll_number     INT,
    address         VARCHAR(250),
    phone_number    INT,
    language        INT,
    science         INT,
    maths           INT
);

------------------------------------

ALTER TABLE student
	DROP COLUMN maths,
	DROP COLUMN science

ALTER TABLE student
	DROP COLUMN phone_number

------------------------------------
    
INSERT INTO student 
	(id, first_name, last_name, age, roll_number, address)
VALUES
	(1, 'John', 'Smith', 12, 101, 'Chennai')

------------------------------------
    
TRUNCATE TABLE students

------------------------------------

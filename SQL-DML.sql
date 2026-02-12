------------------------------------------------------------------------
--          DML - Data Manipulation Language
------------------------------------------------------------------------
-- Work with data in the tables. Create, Read, Update or Delete - CRUD
--
--          -----------------------------------
--          | Command | Description           |
--          |---------|-----------------------|
--          | SELECT  | Read rows from tables |
--          | INSERT  | Add rows to table     |
--          | UPDATE  | Modify existing rows  |
--          | DELETE  | Delete rows           |
--          -----------------------------------

--  SYNTAX

--  INSERT INTO <table-name>
--      (<column-name-one>, <column-name-two>, <column-name-three>)
--  VALUES
--      (<value-one>, <value-two>, <value-three>)



------------------------------------------------------------------------

-- add a new record (row/data) to student table
INSERT INTO student 
VALUES
	(1, 'John', 'Smith', 12, 101, 'Chennai');                   -- values

------------------------------------------------------------------------

-- add a new record (row/data) to student table
INSERT INTO student 
	(id, first_name, last_name, age, roll_number, address)      -- list & order of values to add
VALUES
	(1, 'John', 'Smith', 12, 101, 'Chennai');                   -- values

------------------------------------------------------------------------

-- read all rows from student table 
SELECT * FROM student;

------------------------------------------------------------------------

-- read only three columns from all rows
SELECT 
    id, first_name, last_name   -- only three columns
FROM 
    student;

------------------------------------------------------------------------

-- update value of age column in student table

UPDATE 
	student             -- update 'student' table
SET 
	age = 11;           -- set value of 'age' column to '11' for all rows

------------------------------------------------------------------------

UPDATE 
	student 
SET 
	age = age + 1;      -- increment 'age' column by '1' for all rows

------------------------------------------------------------------------

-- WHERE CLAUSE

UPDATE 
	student 
SET 
	age = age + 1
WHERE
    roll_number = 101;      -- increment 'age' by '1' for roll number 101

------------------------------------------------------------------------

SELECT
    first_name, last_name
FROM
    student
WHERE
    roll_number = 101;      -- select details of students with roll number 101

------------------------------------------------------------------------

DELETE FROM 
	student
WHERE
	roll_number = 101;		-- CAUTION - with-out where clause all data will be lost

------------------------------------------------------------------------

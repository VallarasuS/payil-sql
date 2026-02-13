------------------------------------------------------------------------
--                  WHERE Clause
------------------------------------------------------------------------
--  Conditionally read data from table
--
--          -----------------------------
--          | Command     | Description |
--          |-------------|-------------|
--          | =           | eq          |
--          | <           | lt          |
--          | >           | gt          |
--          | >=          | gt or eq    |
--          | <=          | lt or eq    |
--          | <>          | not eq      |
--          | LIKE        |             |
--          | IS NULL     |             |
--          | IS NOT NULL |             |
--          | BETWEEN     |             |
--          | IN          |             |
--          -----------------------------


--  SYNTAX

-- SELECT * FROM 
--     <table-name> 
-- WHERE 
--     condition / expression;

------------------------------------------------------------------------
-- select all students who are from chennai

SELECT * FROM 
    student 
WHERE                           -- WHERE clause allows filtering
    address = 'Chennai';        -- filter expression

------------------------------------------------------------------------
-- select a student with specific id

SELECT * FROM 
    student 
WHERE                           
    id = 100;               -- eq

------------------------------------------------------------------------
-- select students whose age is more than 17

SELECT * FROM 
    student 
WHERE                           
    age > 17;               -- gt

------------------------------------------------------------------------
-- select students whose last name is null (un-set)

SELECT * FROM 
    student 
WHERE                           
    last_name IS NULL;       -- is null
------------------------------------------------------------------------
-- select students who are from Chennai or Madurai

SELECT * FROM 
	student
WHERE 
	address IN ('Chennai', 'Madurai');
------------------------------------------------------------------------ 
-- select all students aged between 17 and 19

SELECT * FROM 
	student
WHERE 
	age BETWEEN 17 AND 19;
------------------------------------------------------------------------ 
-- select students whose names end with 'an'

SELECT * FROM 
	student
WHERE 
	first_name LIKE '%an'

------------------------------------------------------------------------ 
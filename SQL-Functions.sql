------------------------------------------------------------------------
--                      SQL FUNCTIONS
------------------------------------------------------------------------
-- SYNTAX

--  CREATE FUNCTION <function-name> (params type) RETURNS type
--  LANGUAGE SQL
--  AS $$
--        <query>
--  $$

-- DROP FUNCTION <function-name> (type)

-- EXAMPLE 
-- A function to increment input parameter by 1
-- 5    -> 5  + 1   -> 6
-- 10   -> 10 + 1   -> 11

--  CREATE FUNCTION increment (a INT) RETURNS INT
--  LANGUAGE SQL
--  AS $$
--      SELECT a + 1;
--  $$

--  SELECT INCREMENT(10);

------------------------------------------------------------------------

-- AGGREGATE FUNCTIONS
-- SUM, MAX, COUNT, MIN, AVG
-- SUM(price)

 CREATE FUNCTION increment (a INT) RETURNS INT
 LANGUAGE SQL
 AS $$
     SELECT a + 1;
 $$

 SELECT INCREMENT(10);

 DROP FUNCTION increment (INT)

------------------------------------------------------------------------

CREATE FUNCTION student_by_city (city varchar(50)) RETURNS TABLE (id INT, first_name VARCHAR(200))
LANGUAGE SQL
AS $$
    SELECT 
        id, first_name
    FROM 
        student
    WHERE
        address = city;
$$

SELECT * FROM student_by_city('Chennai')
SELECT * FROM student_by_city('Madurai')
SELECT * FROM student_by_city('Trichy')


DROP FUNCTION student_by_city (VARCHAR)

DROP FUNCTION increment_number(INT);
DROP FUNCTION customer_count;
DROP VIEW customer_orders;
------------------------------------------------------------------------
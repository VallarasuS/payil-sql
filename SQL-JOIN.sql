------------------------------------------------------------------------
--          SQL JOINS
------------------------------------------------------------------------
--  SQL joins allows to combine two or more columns
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

SELECT * FROM customers;
SELECT * FROM customers WHERE fname = 'Emma';
SELECT id FROM customers WHERE fname = 'Emma'; -- -> 1
SELECT id FROM customers WHERE fname = 'Noah'; -- -> 4


SELECT * FROM orders;
SELECT * FROM orders WHERE customer_id = 1;
SELECT * FROM orders WHERE customer_id in (1); --> 1 -> EMMA
SELECT * FROM orders WHERE customer_id in (4); --> 4 -> Noah

-- SUB QUERY

SELECT * FROM orders WHERE customer_id in (
	SELECT id FROM customers WHERE fname = 'Noah'
	);

-- JOINS

-- 		Left
--		Right
--		Inner

SELECT
	c.id, c.fname, o.item, o.price, o.quantity
FROM
	customers c
JOIN
	orders o
ON
	c.id = o.customer_id;


------------------------------------------------------------------------
--                      SQL VIEWS
------------------------------------------------------------------------
-- Save 'join' or any 'complex query' as a table like object called 'View'

------------------------------------------------------------------------
-- DEFINITION:
-- View is a virtual table that represents a subset of data from 
-- one or more base tables
------------------------------------------------------------------------


-- CREATE VIEW <view-name> 
-- AS
-- <QUERY>

-- DROP VIEW <view-name>

-- Example:

-- CREATE VIEW chennai_student AS
--      SELECT 
-- 	    * 
--      FROM 
-- 	        student
--      WHERE
-- 	        address = 'Chennai'

------------------------------------------------------------------------


CREATE VIEW customer_orders AS
	SELECT
		c.id, c.fname, c.lname, o.id as "order_id", o.item, o.price, o.quantity
	FROM 
		customers c
	JOIN
		orders o
	ON
		o.customer_id = c.id;

------------------------------------------------------------------------

SELECT 
	* 
FROM
	customer_orders
WHERE 
	fname = 'Emma';

------------------------------------------------------------------------

------------------------------------------------------------------------
--                          Aggregate Functions
------------------------------------------------------------------------

-- Aggregate functions compute a single result from a set of input values.

--          ---------------------------------------------
--          | Command | Description                     |
--          |---------|---------------------------------|
--          | AVG     | Computes average                |
--          | COUNT   | Counts number of non-null rows  |
--          | MIN     | Computes min of non-null values |
--          | MAX     | Computes max of non-null values |
--          | SUM     | Computes sum of non-null values |
--          ---------------------------------------------

------------------------------------------------------------------------
-- Total number of sales records
SELECT 
	COUNT(*)
FROM 
	sales;

------------------------------------------------------------------------
-- Total revenue (price × quantity)
SELECT 
	SUM(price * quantity)
FROM 
	sales;

------------------------------------------------------------------------
-- Average price per item sold
SELECT 
	AVG(price)
FROM 
	sales;

------------------------------------------------------------------------
-- Average quantity per sale
SELECT 
	AVG(quantity)
FROM 
	sales;

------------------------------------------------------------------------
-- Lowest and highest single item price
SELECT 
	MIN(price),
	MAX(price)
FROM 
	sales;
------------------------------------------------------------------------
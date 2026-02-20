------------------------------------------------------------------------
--                          Group By, Having
------------------------------------------------------------------------

-- GROUP BY
-- Groups rows that have same values in columns

-- HAVING
-- Include or exclude groups with a filter


------------------------------------------------------------------------
-- Groups rows that have same values in columns
-- this query below works like DISTINCT

SELECT 
	region
FROM 
	sales 
GROUP BY
	region;

------------------------------------------------------------------------
-- Groups rows by region and aggregate column with-in each group

SELECT 
    SUM(price)
FROM 
	sales 
GROUP BY
	region;

------------------------------------------------------------------------
-- aggregate multiple columns

SELECT 
	region,
	COUNT(ID),
	SUM(price), 
	SUM(quantity), 
	AVG(price), 
	MAX(price), 
	MIN(price) 
FROM 
	sales 
GROUP BY
	region;

------------------------------------------------------------------------
-- filter and then aggregate filtered data

SELECT 
	region,
	COUNT(ID),
	SUM(price), 
	SUM(quantity), 
	AVG(price), 
	MAX(price), 
	MIN(price) 
FROM 
	sales 
WHERE 
	region IN ('Chennai', 'Bengaluru')
GROUP BY
	region;

------------------------------------------------------------------------
-- group by more than one column

SELECT 
	region,
	category,
	COUNT(ID),
	SUM(price), 
	SUM(quantity), 
	AVG(price), 
	MAX(price), 
	MIN(price) 
FROM 
	sales 
WHERE 
	region IN ('Chennai', 'Bengaluru')
GROUP BY
	region, category;

------------------------------------------------------------------------
-- after the grouping filter by the aggregated values

SELECT 
	region,
	category,
	COUNT(ID),
	SUM(price), 
	SUM(quantity), 
	AVG(price), 
	MAX(price), 
	MIN(price) 
FROM 
	sales 
WHERE 
	region IN ('Chennai', 'Bengaluru')
GROUP BY
	region, category
HAVING
	SUM(price) > 1000;

------------------------------------------------------------------------
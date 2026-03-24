SELECT
	product, price
FROM
	sales
ORDER BY
	price DESC
LIMIT 10;				-- select 10 rows (first 10)


SELECT
	product, price
FROM
	sales
ORDER BY
	price DESC
LIMIT 
	10				-- select 10 rows
OFFSET	
	10;				-- select rows after first 10

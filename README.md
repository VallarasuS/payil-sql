# SQL

```SQL
SELECT 
    --  *
	-- 	id, product, price
	--  MAX(price), COUNT, MIN, MAX, AVG, SUM
	-- 	price * 100
FROM 
	-- sales
    -- table
WHERE
	-- id = 10
	-- region IN ('Chennai', 'Bangalore')
	-- <, <=, >, >=, <>, 
    -- IS NULL, IS NOT NULL, 
    -- LIKE, BETWEEN
	-- AND OR NOT
GROUP BY
    -- region
    -- region, category
HAVING
    -- SUM(quantity) > 5
    -- SUM(price) > 1000
ORDER BY
    -- count desc
```

### DDL

## Database & Table Basics

| Command                              | Description        |
|--------------------------------------|--------------------|
| [CREATE DATABASE](./SQL-DDL.sql#L35) | to create a db     |
| [DROP DATABASE](./SQL-DDL.sql#L38)   | to delete a db     |
| [CREATE TABLE](./SQL-DDL.sql#L48)    | to create a table  |
| [ALTER TABLE](./SQL-DDL.sql#L64)     | to modify a table  |
| [TRUNCATE TABLE](./SQL-DDL.sql#L74)  | to remove all data |

## Constraints

- [NOT NULL](./SQL-Constraints.sql#L29)
- [UNIQUE](./SQL-Constraints.sql#L28)
- [CHECK](./SQL-Constraints.sql#L31)
- PRIMARY KEY
- FOREIGN KEY

### DML
- [SELECT](./SQL-DML.sql#L81)
- [INSERT](./SQL-DML.sql#L27)
- [UPDATE](./SQL-DML.sql#L56)
- [DELETE](./SQL-DML.sql#L90)

### WHERE
- [=, >, >=, <, <=, <>](./SQL-WHERE.sql#L33)
- [IS NULL, IS NOT NULL](./SQL-WHERE.sql#L57)
- [IN](./SQL-WHERE.sql#L70)
- [LIKE](./SQL-WHERE.sql#L84)
- [BETWEEN](./SQL-WHERE.sql#L77)

### Aggregation Functions

- [AVG](./SQL-AGG.sql#L33)
- [SUM](./SQL-AGG.sql#L26)
- [COUNT](./SQL-AGG.sql#L19)
- [MIN](./SQL-AGG.sql#L47)
- [MAX](./SQL-AGG.sql#L47)

### GROUP BY
- [Filter then Group](./SQL-GroupBy-Having.sql#L52)
- [Single column](./SQL-GroupBy-Having.sql#L26)
- [Multiple columns](./SQL-GroupBy-Having.sql#L70)

### HAVING

### COLUMN LABEL

### LIMIT OFFSET

### DISTINCT

------------------------------------------------------------------------
--                          Modifying Tables
------------------------------------------------------------------------

-- Adding a Column
-- Removing a Column
-- Adding a Constraint
-- Removing a Constraint
-- Changing a Column's Default Value
-- Changing a Column's Data Type
-- Renaming a Column
-- Renaming a Table

------------------------------------------------------------

CREATE TABLE products (
	id INT,
	name VARCHAR(100),
	price NUMERIC(5, 2),
	quantity INT,
	out_of_stock BOOLEAN DEFAULT FALSE
)

------------------------------------------------------------
-- Adding a Column

ALTER TABLE
	products
ADD COLUMN
	offer_percent int;

------------------------------------------------------------
-- Removing a Column

ALTER TABLE
	products
DROP COLUMN
	out_of_stock;

------------------------------------------------------------
-- Adding a Constraint

ALTER TABLE products
ADD CHECK (offer_percent > 0);

ALTER TABLE products
ADD UNIQUE (id);

ALTER TABLE products
ADD CONSTRAINT products_id_unique UNIQUE(id);

ALTER TABLE products
ALTER COLUMN name SET NOT NULL;

------------------------------------------------------------
-- Removing a Constraint

ALTER TABLE products
DROP CONSTRAINT products_id_unique;

ALTER TABLE products
ALTER COLUMN name DROP NOT NULL;

------------------------------------------------------------
-- Changing a Column's Default Value

ALTER TABLE products
ALTER COLUMN offer_percent SET DEFAULT 0;

ALTER TABLE PRODUCTS
ALTER COLUMN offer_percent DROP DEFAULT;

------------------------------------------------------------
-- Changing a Column's Data Type

ALTER TABLE products
ALTER COLUMN offer_percent TYPE NUMERIC(2,2);

------------------------------------------------------------
-- Renaming a Column

ALTER TABLE products
RENAME COLUMN offer_percent TO offers;

------------------------------------------------------------
-- Renaming a Table

ALTER TABLE products
RENAME TO product;

------------------------------------------------------------
------------------------------------------------------------------------
--                      SQL PROCEDURE
------------------------------------------------------------------------

-- money transfer from account, to an account, money 

-- CREATE PROCEDURE <name> (params TYPE)
-- LANGUAGE SQL
-- AS $$

--     <STATEMENT>

-- $$

-- CALL <name> (params)

-- DROP PROCEDURE <name> (TYPE)
------------------------------------------------------------------------

CREATE TABLE accounts (
	id 			INT,
	account		VARCHAR(5),
	name 		VARCHAR(100),
	balance		NUMERIC(6,2)
);

INSERT INTO accounts
	(id, account, name, balance)
VALUES
	(1, 'ABC01', 'John', 1000),
	(2, 'ABC02', 'Dave', 1000),
	(3, 'ABC03', 'Adam', 1000),
	(4, 'ABC04', 'Rob', 1000);

------------------------------------------------------------------------

-- Transfer 100 from Dave to John
-- Dave - 900
-- John - 1100

------------------------------------------------------------------------
UPDATE 
	accounts
SET
	balance = balance - 100
WHERE
	account = 'ABC02';

UPDATE 
	accounts
SET
	balance = balance + 100
WHERE
	account = 'ABC01'

------------------------------------------------------------------------

SELECT * FROM accounts;

------------------------------------------------------------------------

CREATE PROCEDURE money_transfer (from_acc VARCHAR, to_acc VARCHAR, amount INT)
LANGUAGE SQL
AS $$

	UPDATE 
		accounts
	SET
		balance = balance - amount
	WHERE
		account = from_acc;
	
	UPDATE 
		accounts
	SET
		balance = balance + amount
	WHERE
		account = to_acc;

$$

CALL money_transfer('ABC01', 'ABC02', 100);

DROP PROCEDURE money_transfer(VARCHAR, VARCHAR, INT);

------------------------------------------------------------------------
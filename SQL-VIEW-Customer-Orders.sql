CREATE VIEW CUSTOMER_ORDERS AS

	SELECT 
		c.id as cid, p.id as pid, o.id as oid, a.id as aid,
		c.name as cname, c.email, c.phone,
		p.name as pname, p.price,
		o.quantity, o.total, o.status,
		a.street, a.city, a.pincode
	FROM 
		Products p
	JOIN 
		Orders o 
	ON 
		p.Id = o.Product_Id
	JOIN
		Customers c
	ON 
		o.customer_id = c.id
	JOIN
		Address a
	ON
		o.address_id = a.id 
	
-------------------------------------------


SELECT 
	cid, cname, SUM(total), *
FROM 
	CUSTOMER_ORDERS
WHERE
	status = 'delivered' and city = 'New York'
Group By
	cid, cname
ORDER BY
	SUM(total) DESC
		
	


		
# SQL Practice Questions

## Tables

### Customers Table

| Customer_ID | First_Name | Last_Name | Email          | City    | State      |
|-------------|------------|-----------|----------------|---------|------------|
| 1001        | John       | Adam      | John@gmail.com | Chennai | Tamil Nadu |


### Orders Table

| Order_ID | Customer_ID | Order_Date | Amount | Product_Name      | Product_Category | Status    |
|----------|-------------|------------|--------|-------------------|------------------|-----------|
| 2001     | 1001        | 2025-03-06 | 15000  | OPPO Mobile Phone | Electronics      | Delivered |

### Products Table


| Product_ID | Product_Name      | Unit_Price | Category    | Manufacturer | Stock_Quantity | Order_ID |
|------------|-------------------|------------|-------------|--------------|----------------|----------|
| 3001       | OPPO Mobile Phone | 15000      | Electronics | OPPO         | 50             | 2001     |

### Tasks

*6-MAR-2026*

1. Create tables, with appropriate Primary and Foreign keys
2. Add 'Phone_Number' column to Customers table
3. Insert query to add customer info

*7-MAR-2026*

4. Find number of orders placed by each customer from Orders table.
5. Find all orders with order value not less than 10000 and not more than 25000
6. Update city of one customer to "Chennai"
7. Delete one customer

*9-MAR-2026*

8. Find products from "Product Table" that are never ordered.
9. Find customers detail who live in "Chennai" and ordered for more than 20,000
10. Find "Customer_ID" and Total number of orders for each customer who have placed more than "two" orders
11. Find top 5 customers by number of orders they have placed, along with their "First_name" and "email addresses"

*12-MAR-2026*

12. Find all customers who have placed orders in the month of January this year.
13. Find total number of orders placed and average “order amount" for each city.
14. Find products that are ordered on weekends, and customer details who had ordered them.

*20-MAR-2026*

15. Find most expensive product with price and customer details (Customer_ID, First_Name) who have ordered it.
16. List all customers with their orders count in the format "Customer (Order Count)". ex: ARUN kumar (3)
17. Find all customers who live in Chennai and have ordered second most expensive product.
18. Get total revenue from each customer, and label customer as 'High Spender' if they have spent more than 50,000, otherwise 'Low Spender'.
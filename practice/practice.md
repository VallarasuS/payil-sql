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
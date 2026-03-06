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

- Product_ID
- Product_Name
- Unit_Price
- Category
- Manufacturer
- Stock_Quantity
- Order_ID

### Tasks

1. Create tables, with appropriate Primary and Foreign keys
2. Add 'Phone_Number' column to Customers table
3. Insert query to add customer info

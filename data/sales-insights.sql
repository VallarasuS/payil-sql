---------------------------------------

CREATE TABLE Customers (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(150) UNIQUE
);

CREATE TABLE Address (
    Id SERIAL PRIMARY KEY,
    Customer_Id INT NOT NULL,
    Street VARCHAR(200),
    City VARCHAR(100),
    Pincode VARCHAR(10),
    CONSTRAINT fk_address_customer
        FOREIGN KEY (Customer_Id)
        REFERENCES Customers(Id)
);

CREATE TABLE Products (
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Price NUMERIC(10,2) NOT NULL
);

CREATE TABLE Orders (
    Id SERIAL PRIMARY KEY,
    Customer_Id INT NOT NULL,
    Product_Id INT NOT NULL,
    Address_Id INT NOT NULL,
    Quantity INT NOT NULL,
    Total NUMERIC(10,2) NOT NULL,
    Status VARCHAR(20) NOT NULL
        CHECK (Status IN ('cancelled','delivered')),
    CONSTRAINT fk_order_customer
        FOREIGN KEY(Customer_Id)
        REFERENCES Customers(Id),
    CONSTRAINT fk_order_product
        FOREIGN KEY(Product_Id)
        REFERENCES Products(Id),
    CONSTRAINT fk_order_address
        FOREIGN KEY(Address_Id)
        REFERENCES Address(Id)
);

---------------------------------------

INSERT INTO Customers (Name, Phone, Email) VALUES
('John Smith','9876543210','john@email.com'),
('Alice Johnson','9876543211','alice@email.com'),
('Robert Brown','9876543212','robert@email.com'),
('Emma Wilson','9876543213','emma@email.com'),
('David Miller','9876543214','david@email.com'),
('Sophia Davis','9876543215','sophia@email.com'),
('Michael Taylor','9876543216','michael@email.com'),
('Olivia Thomas','9876543217','olivia@email.com'),
('James Anderson','9876543218','james@email.com'),
('Linda White','9876543219','linda@email.com');

---------------------------------------

INSERT INTO Address (Customer_Id, Street, City, Pincode) VALUES
(1,'12 Park Street','New York','10001'),

(2,'45 Oak Avenue','Chicago','60601'),
(2,'89 Lake View','Chicago','60602'),

(3,'77 King Road','Dallas','75201'),

(4,'10 Green Street','Boston','02101'),
(4,'55 River Road','Boston','02102'),

(5,'5 Palm Street','Miami','33101'),

(6,'18 Sunset Blvd','Los Angeles','90001'),

(7,'200 Maple Ave','Seattle','98101'),
(7,'300 Pine Road','Seattle','98102'),

(8,'40 Hill Road','Denver','80201'),

(9,'100 East Street','Houston','77001'),

(10,'900 Beach Road','San Diego','92101');

---------------------------------------

INSERT INTO Products (Name, Price) VALUES
('Laptop',1500.00),
('Smartphone',900.00),
('Tablet',650.00),
('Monitor',300.00),
('Keyboard',80.00),
('Mouse',40.00),
('Printer',250.00),
('Headphones',120.00),
('Gaming Chair',450.00),     -- Never sold
('Webcam',110.00);           -- Never sold

---------------------------------------

INSERT INTO Orders
(Customer_Id, Product_Id, Address_Id, Quantity, Total, Status)
VALUES

(1,1,1,1,1500,'delivered'),
(1,5,1,2,160,'delivered'),
(1,6,1,3,120,'cancelled'),
(1,4,1,2,600,'delivered'),
(2,1,2,2,3000,'delivered'),
(2,2,3,3,2700,'delivered'),
(2,3,2,2,1300,'delivered'),
(2,1,3,1,1500,'cancelled'),
(2,7,2,2,500,'delivered'),
(2,4,3,4,1200,'delivered'),
(3,2,4,1,900,'delivered'),
(3,5,4,5,400,'cancelled'),
(4,3,5,2,1300,'delivered'),
(4,8,6,3,360,'delivered'),
(4,4,5,2,600,'cancelled'),
(5,7,7,1,250,'delivered'),
(6,2,8,4,3600,'delivered'),
(6,1,8,2,3000,'delivered'),
(7,5,9,5,400,'delivered'),
(7,6,10,10,400,'delivered'),
(7,8,9,2,240,'delivered'),
(7,4,10,3,900,'cancelled'),
(7,2,9,1,900,'delivered'),
(7,3,10,2,1300,'delivered'),
(8,8,11,1,120,'delivered'),
(9,5,12,1,80,'cancelled');
-- CREATE DATABASE Product;
use Product;

-- CREATE TABLE Customers (customer_id INTEGER PRIMARY KEY,name TEXT,city TEXT);
-- CREATE TABLE Orders (order_id INTEGER PRIMARY KEY,customer_id INTEGER,product TEXT,amount INTEGER,FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));

-- Customers table
INSERT INTO Customers VALUES (1, 'Alice', 'Delhi');
INSERT INTO Customers VALUES (2, 'Bob', 'Mumbai');
INSERT INTO Customers VALUES (3, 'Charlie', 'Pune');

-- Orders table
INSERT INTO Orders VALUES (101, 1, 'Laptop', 50000);
INSERT INTO Orders VALUES (102, 2, 'Phone', 20000);
INSERT INTO Orders VALUES (103, 1, 'Mouse', 500);
INSERT INTO Orders VALUES (104, 3, 'Tablet', 15000);

SELECT Customers.name, Orders.product FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.product FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.product FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

SELECT Customers.name, Orders.product FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id UNION
SELECT Customers.name, Orders.product FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;






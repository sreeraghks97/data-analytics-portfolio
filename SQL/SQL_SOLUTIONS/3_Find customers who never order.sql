CREATE TABLE Customers(id INT ,NAME VARCHAR(100));

SELECT * FROM Customers;

INSERT INTO Customers(id,NAME) VALUES (1,'Joe'),(2,'Henry'),(3,'Sam'),(4,'Max');

CREATE TABLE Orders(id INT ,customerId INT);

SELECT * FROM Orders;

INSERT INTO Orders(id,customerId) VALUES (2,1),(1,3);

SELECT NAME AS Customers FROM Customers FULL OUTER JOIN Orders ON Customers.id = Orders.customerId WHERE Orders.customerId IS NULL ; 
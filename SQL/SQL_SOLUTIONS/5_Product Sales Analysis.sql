CREATE TABLE Products (ProductName VARCHAR(100), Price DECIMAL(10,2));

SELECT * FROM Products;

INSERT INTO Products(ProductName , Price) VALUES('Apple'	,2.50),('Banana'	,1.50),('Orange'	,3.00),('Mango'	,2.00);

CREATE TABLE Orders (OrderID INT, ProductID INT , Quantity INT, Sales  DECIMAL(5,2));

SELECT * FROM Orders ORDER BY OrderID ;

INSERT INTO Orders(OrderID, ProductID,Quantity , Sales) VALUES (1,1,10,2.50),(2,1,5,12.50),(3,2,8,12.00),(4,3,12,36.00),(5,4,6,12.00);

UPDATE Orders 
SET Sales = 25.0 
WHERE OrderID = 1 AND ProductID=1 AND Quantity=10 ;

SELECT Products.ProductName , SUM(Orders.Sales) AS "TotalRevenue" FROM Products FULL OUTER JOIN Orders ON Products.ProductID = Orders.ProductID GROUP BY Products.ProductName ORDER BY "TotalRevenue" DESC;

ALTER TABLE Products
ADD ProductID INT;

UPDATE Products SET ProductID = 1 WHERE ProductName = 'Apple';
UPDATE Products SET ProductID = 2 WHERE ProductName = 'Banana';
UPDATE Products SET ProductID = 3 WHERE ProductName = 'Orange';
UPDATE Products SET ProductID = 4 WHERE ProductName = 'Mango';

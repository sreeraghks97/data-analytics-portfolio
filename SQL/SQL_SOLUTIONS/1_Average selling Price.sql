CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    SellingPrice DECIMAL(10, 2)
);

SELECT * FROM Products

INSERT INTO Products (ProductID, ProductName, SellingPrice) VALUES
(1, 'Product A', 100.00),
(2, 'Product B', 150.00),
(1, 'Prodcut A', 120.00),
(3, 'Product C', 200.00),
(2, 'Product B', 180.00),
(1, 'Prodcut A', 90.00),
(3, 'Prodcut C', 210.00);

SELECT ProductID, ProductName, AVG(SellingPrice)
FROM Products
GROUP BY ProductID, ProductName;

UPDATE Products
SET ProductName = CASE 
    WHEN ProductName = 'Prodcut A' THEN 'Product A'
    WHEN ProductName = 'Prodcut C' THEN 'Product C'
    ELSE ProductName
END
WHERE ProductName IN ('Prodcut A', 'Prodcut C'); END


SELECT ProductName, ROUND(AVG(SellingPrice), 6) AS AverageSellingPrice
FROM Products
GROUP BY ProductName;

SELECT 
  ProductName, 
  TO_CHAR(AVG(SellingPrice), 'FM999999.000000') AS AverageSellingPrice
FROM Products
GROUP BY ProductName
ORDER BY ProductName;

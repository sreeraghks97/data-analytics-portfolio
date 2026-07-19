CREATE TABLE Sales (
    CustomerID INT,
    ProductID CHAR(1),
    PurchaseDate DATE,
    Quantity INT,
    Revenue DECIMAL(10,2)
);

SELECT * FROM Sales;

INSERT INTO Sales (CustomerID, ProductID, PurchaseDate, Quantity, Revenue) VALUES
(1, 'A', '2023-01-01', 5, 100.00),
(2, 'B', '2023-01-02', 3, 50.00),
(3, 'A', '2023-01-03', 2, 30.00),
(4, 'C', '2023-01-03', 1, 20.00),
(1, 'B', '2023-01-04', 4, 80.00);

SELECT SUM(Revenue) AS "TotalRevenue" FROM Sales;

SELECT  ProductID, SUM(Quantity) AS "TotalQuantity", SUM(Revenue) AS "TotalRevenue" FROM Sales GROUP BY ProductID ORDER BY  ProductID;

SELECT  CustomerID,  SUM(Revenue) AS "TotalRevenue"  FROM Sales GROUP BY CustomerID ORDER BY  CustomerID;

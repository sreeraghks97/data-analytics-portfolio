

/*
=========================================================
Project Name : Sales Performance Analysis

Objective:
Analyze sales transactions to calculate total revenue,
product-wise sales performance, and customer revenue.

Tools Used:
PostgreSQL
SQL

=========================================================
*/


-- =====================================================
-- Create Sales Table
-- =====================================================

CREATE TABLE Sales (
    CustomerID INT,
    ProductID CHAR(1),
    PurchaseDate DATE,
    Quantity INT,
    Revenue DECIMAL(10,2)
);


-- =====================================================
-- Insert Sales Data
-- =====================================================

INSERT INTO Sales
(CustomerID, ProductID, PurchaseDate, Quantity, Revenue)
VALUES
(1, 'A', '2023-01-01', 5, 100.00),
(2, 'B', '2023-01-02', 3, 50.00),
(3, 'A', '2023-01-03', 2, 30.00),
(4, 'C', '2023-01-03', 1, 20.00),
(1, 'B', '2023-01-04', 4, 80.00);


-- =====================================================
-- Business Question 1:
-- Calculate total revenue.
-- =====================================================

SELECT
    SUM(Revenue) AS TotalRevenue
FROM Sales;


-- =====================================================
-- Business Question 2:
-- Calculate total quantity sold and revenue by product.
-- =====================================================

SELECT
    ProductID,
    SUM(Quantity) AS TotalQuantity,
    SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY ProductID
ORDER BY ProductID;


-- =====================================================
-- Business Question 3:
-- Identify customers based on total revenue generated.
-- =====================================================

SELECT
    CustomerID,
    SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY CustomerID
ORDER BY TotalRevenue DESC;
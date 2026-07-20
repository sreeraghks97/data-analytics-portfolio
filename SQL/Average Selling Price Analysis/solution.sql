/*
==========================================================
Project  : Average Selling Price Analysis
Database : PostgreSQL
Author   : Sreerag K S

Description:
This project calculates the average selling price for each
product after correcting inconsistent product names in the
dataset.

Skills Demonstrated:
• CREATE TABLE
• INSERT
• SELECT
• UPDATE
• GROUP BY
• AVG()
• ROUND()
• Data Cleaning
==========================================================
*/

----------------------------------------------------------
-- Create Products Table
----------------------------------------------------------

CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    SellingPrice DECIMAL(10,2)
);

----------------------------------------------------------
-- Verify Table Creation
----------------------------------------------------------

SELECT *
FROM Products;

----------------------------------------------------------
-- Insert Sample Data
----------------------------------------------------------

INSERT INTO Products (ProductID, ProductName, SellingPrice)
VALUES
(1, 'Product A', 100.00),
(2, 'Product B', 150.00),
(1, 'Prodcut A', 120.00),
(3, 'Product C', 200.00),
(2, 'Product B', 180.00),
(1, 'Prodcut A', 90.00),
(3, 'Prodcut C', 210.00);

----------------------------------------------------------
-- Verify Inserted Data
----------------------------------------------------------

SELECT *
FROM Products;

----------------------------------------------------------
-- Exploratory Analysis
----------------------------------------------------------
-- Review average selling price before correcting
-- inconsistent product names.

SELECT
    ProductID,
    ProductName,
    AVG(SellingPrice) AS AverageSellingPrice
FROM Products
GROUP BY ProductID, ProductName
ORDER BY ProductID;

----------------------------------------------------------
-- Data Cleaning
----------------------------------------------------------
-- Correct spelling mistakes in product names.

UPDATE Products
SET ProductName =
    CASE
        WHEN ProductName = 'Prodcut A' THEN 'Product A'
        WHEN ProductName = 'Prodcut C' THEN 'Product C'
        ELSE ProductName
    END
WHERE ProductName IN ('Prodcut A', 'Prodcut C');

----------------------------------------------------------
-- Verify Cleaned Data
----------------------------------------------------------

SELECT *
FROM Products;

----------------------------------------------------------
-- Business Query
----------------------------------------------------------
-- Calculate the average selling price for each product.

SELECT
    ProductName,
    ROUND(AVG(SellingPrice), 6) AS AverageSellingPrice
FROM Products
GROUP BY ProductName
ORDER BY ProductName;

----------------------------------------------------------
-- Alternative Output Formatting
----------------------------------------------------------
-- Display the average price with fixed decimal formatting.

SELECT
    ProductName,
    TO_CHAR(
        AVG(SellingPrice),
        'FM999999.000000'
    ) AS AverageSellingPrice
FROM Products
GROUP BY ProductName
ORDER BY ProductName;

----------------------------------------------------------
-- Expected Output
----------------------------------------------------------

-- Product A    103.333333
-- Product B    165.000000
-- Product C    205.000000
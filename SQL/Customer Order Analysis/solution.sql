/*
=========================================================
Project Name : Customer Order Analysis

Objective:
Identify customers who have never placed an order.

Tools Used:
PostgreSQL
SQL

=========================================================
*/


-- =====================================================
-- Create Customers Table
-- =====================================================

CREATE TABLE Customers (
    id INT,
    name VARCHAR(100)
);


-- =====================================================
-- Insert Customer Data
-- =====================================================

INSERT INTO Customers(id, name)
VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');


-- =====================================================
-- Create Orders Table
-- =====================================================

CREATE TABLE Orders (
    id INT,
    customerId INT
);


-- =====================================================
-- Insert Order Data
-- =====================================================

INSERT INTO Orders(id, customerId)
VALUES
(2,1),
(1,3);


-- =====================================================
-- Business Question:
-- Find customers who never placed an order.
-- =====================================================

SELECT
    c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;
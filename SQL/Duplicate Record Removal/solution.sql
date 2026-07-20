
/*
=========================================================
Project Name : Duplicate Record Removal

Objective:
Identify and remove duplicate customer records while
maintaining one unique record for each email address.

Tools Used:
PostgreSQL
SQL

=========================================================
*/


-- =====================================================
-- Create Customer Email Table
-- =====================================================

CREATE TABLE Emails (
    id INT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(100)
);


-- =====================================================
-- Insert Customer Data
-- =====================================================

INSERT INTO Emails(id, Name, Email, Phone)
VALUES
(1,'Rahul','rahul@example.com','9839473902'),
(2,'Rohit','rohit@example.com','9883782971'),
(3,'Suresh','rahul@example.com','7654321098'),
(4,'Manish','manish@example.com','8927394619'),
(5,'Amit','amit@example.com','9399303840'),
(6,'Rahul','rahul@example.com','9737466147');


-- =====================================================
-- Business Question:
-- Remove duplicate email records while keeping
-- the first occurrence.
-- =====================================================

DELETE FROM Emails
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Emails
    GROUP BY Email
);


-- View Cleaned Data

SELECT *
FROM Emails;
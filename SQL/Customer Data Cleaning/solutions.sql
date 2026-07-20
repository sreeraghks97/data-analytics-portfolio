
/*
=========================================================
Project Name : Customer Data Cleaning

Objective:
Standardize customer names by correcting inconsistent
capitalization.

Tools Used:
PostgreSQL
SQL

=========================================================
*/


-- =====================================================
-- Create Customer Names Table
-- =====================================================

CREATE TABLE Names (
    Name VARCHAR(100)
);


-- =====================================================
-- Insert Customer Data
-- =====================================================

INSERT INTO Names(Name)
VALUES
('rAVI kUMAR'),
('priya sharma'),
('amit PATEL'),
('NEHA gupta');


-- =====================================================
-- Business Question:
-- Fix inconsistent customer name formatting.
-- =====================================================

UPDATE Names
SET Name = INITCAP(Name);


-- View Cleaned Data

SELECT *
FROM Names;
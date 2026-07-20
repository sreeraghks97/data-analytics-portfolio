# Average Selling Price Analysis

## Overview

This project demonstrates how SQL can be used to calculate the average selling price of products while handling data quality issues. Before performing the analysis, inconsistent product names are identified and corrected to ensure accurate results.

---

## Business Problem

A retail company maintains historical product pricing data. Due to manual data entry, some product names contain spelling mistakes, resulting in duplicate records for the same product.

The objective is to clean the data and calculate the average selling price for each product.

---

## Dataset

The dataset contains the following fields:

| Column | Description |
|----------|-------------|
| ProductID | Unique identifier for each product |
| ProductName | Name of the product |
| SellingPrice | Selling price of the product |

---

## SQL Concepts Used

- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- CASE Statement
- GROUP BY
- Aggregate Functions (`AVG`)
- ROUND()
- TO_CHAR()
- Data Cleaning

---

## Project Workflow

1. Create the Products table.
2. Insert sample product data.
3. Verify the inserted records.
4. Identify inconsistent product names.
5. Clean the data using an UPDATE statement.
6. Calculate the average selling price for each product.
7. Format the output for reporting.

---

## Business Insights

- Product A recorded an average selling price of **103.333333**.
- Product B recorded an average selling price of **165.000000**.
- Product C recorded an average selling price of **205.000000**.
- Data cleaning improved the accuracy of the analysis by removing inconsistencies in product names.

---

## Expected Output

| Product Name | Average Selling Price |
|--------------|----------------------:|
| Product A | 103.333333 |
| Product B | 165.000000 |
| Product C | 205.000000 |

---

## Files

```
Average_Selling_Price_Analysis/
│
├── README.md
└── solution.sql
```

---

## Author

**Sreerag K S**

Aspiring Data Analyst | Business Analyst | SQL | PostgreSQL
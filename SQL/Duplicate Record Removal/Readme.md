# Duplicate Record Removal

## Project Overview

This project focuses on identifying and removing duplicate customer records from a database.

Using SQL, duplicate email records are detected and removed while keeping a single unique record for each customer.

---

## Business Problem

Customer databases can contain duplicate records due to repeated entries or data collection issues.

This analysis aims to:

- Identify duplicate customer records.
- Remove unnecessary duplicate entries.
- Maintain clean and accurate customer data.

---

## Dataset Description

The dataset contains customer information.

| Column | Description |
|---|---|
| id | Unique record identifier |
| Name | Customer name |
| Email | Customer email address |
| Phone | Customer phone number |

---

## Analysis Performed

- Identified duplicate email records.
- Kept the earliest record using the minimum ID.
- Removed duplicate entries from the table.

---

## SQL Concepts Used

- CREATE TABLE
- INSERT Statements
- GROUP BY
- MIN()
- DELETE
- Subqueries

---

## Business Questions Answered

1. How can duplicate customer records be identified?
2. How can duplicate entries be removed while keeping one valid record?

---

## Key Insights

- Duplicate removal improves data accuracy.
- Clean customer data improves reporting and customer management.

---

## Business Recommendations

- Implement duplicate detection rules during data entry.
- Use unique constraints for important fields like email addresses.
- Perform regular data quality checks.

---

## Project Structure

Duplicate-Record-Removal

│
├── README.md
└── solution.sql


---

## Conclusion

This project demonstrates how SQL can be used for data cleaning by identifying and removing duplicate records to maintain database quality.
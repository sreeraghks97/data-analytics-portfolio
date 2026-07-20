# Customer Order Analysis

## Project Overview

This project identifies customers who have never placed an order by analyzing customer and order data using SQL.

The analysis helps businesses identify inactive customers who may require targeted engagement strategies.

---

## Business Problem

Businesses need to understand customer activity and identify users who have not made any purchases.

This analysis aims to answer:

- Which customers have never placed an order?
- How can customer and order data be combined to identify inactive customers?

---

## Dataset Description

The project uses two tables:

### Customers Table

| Column | Description |
|---|---|
| id | Unique customer identifier |
| name | Customer name |

### Orders Table

| Column | Description |
|---|---|
| id | Order identifier |
| customerId | Customer reference ID |

---

## Analysis Performed

- Joined customer and order tables.
- Identified customers without matching order records.
- Filtered customers who have never placed an order.

---

## SQL Concepts Used

- CREATE TABLE
- INSERT Statements
- JOIN
- FULL OUTER JOIN
- NULL Filtering

---

## Business Questions Answered

1. Which customers have never placed an order?
2. How can inactive customers be identified using SQL?

---

## Key Insights

- Identifying customers without orders helps businesses understand inactive users.
- Customer activity analysis supports targeted marketing and retention strategies.

---

## Business Recommendations

- Engage inactive customers through targeted campaigns.
- Analyze reasons for customer inactivity.
- Encourage first-time purchases through personalized offers.

---

## Project Structure

Customer-Order-Analysis

│
├── README.md
└── solution.sql



---

## Conclusion

This project demonstrates how SQL joins and filtering techniques can be used to analyze customer activity and identify customers with no purchase history.
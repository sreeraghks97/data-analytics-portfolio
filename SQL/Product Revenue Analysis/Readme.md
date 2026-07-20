# Product Revenue Analysis

## Project Overview

This project analyzes product sales data to identify top-performing products based on total revenue generated.

Using SQL, sales transactions are aggregated to calculate revenue for each product, enabling businesses to evaluate product performance and support data-driven decisions.

---

## Business Problem

Businesses need to identify which products contribute the most to overall revenue.

This analysis aims to answer:

- Which products generate the highest sales revenue?
- How does revenue compare across different products?
- Which products should receive greater business focus?

---

## Dataset Description

The project uses two tables.

### Products Table

| Column | Description |
|---|---|
| ProductID | Unique product identifier |
| ProductName | Product name |
| Price | Unit price |

### Orders Table

| Column | Description |
|---|---|
| OrderID | Unique order identifier |
| ProductID | Product identifier |
| Quantity | Quantity sold |
| Sales | Revenue generated from the order |

---

## Analysis Performed

- Combined product and order data.
- Calculated total revenue for each product.
- Ranked products based on revenue.
- Identified top-selling products.

---

## SQL Concepts Used

- CREATE TABLE
- INSERT Statements
- UPDATE
- JOIN
- SUM()
- GROUP BY
- ORDER BY
- Aggregate Functions

---

## Business Questions Answered

1. Which products generate the highest revenue?
2. How much revenue does each product contribute?
3. How can products be ranked based on sales performance?

---

## Key Insights

- Revenue analysis highlights the best-performing products.
- Product ranking helps prioritize inventory and marketing efforts.
- SQL aggregation simplifies sales performance reporting.

---

## Business Recommendations

- Focus marketing efforts on high-revenue products.
- Monitor low-performing products for improvement opportunities.
- Regularly track product revenue to support inventory and pricing decisions.

---

## Project Structure

```
Product-Revenue-Analysis

│
├── README.md
└── solution.sql
```

---

## Conclusion

This project demonstrates how SQL can be used to analyze product sales, measure revenue performance, and identify top-performing products for better business decision-making.
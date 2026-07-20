# Customer Bank Account Analysis

## Project Overview

This project analyzes customer bank transactions to calculate the final account balance after processing deposits and withdrawals.

Using SQL, transaction records are aggregated to determine the net balance for each customer account, providing a simple financial summary of account activity.

---

## Business Problem

Banks process thousands of transactions daily, including deposits and withdrawals. Financial institutions need an accurate way to calculate each customer's current account balance based on transaction history.

This analysis aims to answer:

- What is the current balance for each customer account?
- How do deposits and withdrawals affect the final account balance?
- How can transaction data be summarized efficiently using SQL?

---

## Dataset Description

The dataset contains customer transaction records.

| Column | Description |
|--------|-------------|
| AccountNumber | Unique account number |
| AccountHolderName | Customer name |
| TransactionDate | Date of transaction |
| TransactionType | Deposit or Withdrawal |
| TransactionAmount | Transaction amount |

---

## Analysis Performed

- Calculated total deposits for each account.
- Calculated total withdrawals for each account.
- Computed the final account balance using transaction history.
- Generated a customer-wise bank account summary.

---

## SQL Concepts Used

- CREATE TABLE
- INSERT Statements
- CASE Statements
- SUM()
- GROUP BY
- ORDER BY
- Aggregate Functions

---

## Business Questions Answered

1. What is the total balance available in each customer account?
2. How do deposits and withdrawals contribute to the final balance?
3. Which customers have the highest account balances?

---

## Key Insights

- Deposits increase the available account balance.
- Withdrawals reduce the available account balance.
- SQL aggregation provides an efficient way to summarize financial transactions.

---

## Business Recommendations

- Regularly reconcile transaction records to maintain accurate account balances.
- Automate balance calculations using SQL for reporting purposes.
- Monitor transaction trends to identify unusual account activity.

---

## Project Structure

```
Customer-Bank-Account-Analysis
│
├── README.md
└── solution.sql
```

---

## Conclusion

This project demonstrates how SQL can be used to process banking transactions, calculate customer account balances, and generate financial summaries for business reporting.
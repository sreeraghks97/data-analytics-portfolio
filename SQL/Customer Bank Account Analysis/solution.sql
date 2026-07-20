/*
=========================================================
Project Name : Customer Bank Account Analysis

Objective:
Calculate the final account balance for each customer
by processing deposits and withdrawals.

Business Problem:
Banks maintain transaction records for every customer.
The objective is to calculate the net account balance
after considering all deposits and withdrawals.

Tools Used:
- PostgreSQL
- SQL

=========================================================
*/

-- =====================================================
-- Create Transactions Table
-- =====================================================

CREATE TABLE Transactions (
    AccountNumber INT,
    AccountHolderName VARCHAR(100),
    TransactionDate DATE,
    TransactionType VARCHAR(20),
    TransactionAmount DECIMAL(10,2)
);

-- =====================================================
-- Insert Sample Data
-- =====================================================

INSERT INTO Transactions
(AccountNumber, AccountHolderName, TransactionDate, TransactionType, TransactionAmount)
VALUES
(1001, 'Ravi Sharma', '2023-07-01', 'Deposit', 5000.00),
(1001, 'Ravi Sharma', '2023-07-05', 'Withdrawal', 1000.00),
(1001, 'Ravi Sharma', '2023-07-10', 'Deposit', 2000.00),
(1002, 'Priya Gupta', '2023-07-02', 'Deposit', 3000.00),
(1002, 'Priya Gupta', '2023-07-08', 'Withdrawal', 500.00),
(1003, 'Vikram Patel', '2023-07-04', 'Deposit', 10000.00),
(1003, 'Vikram Patel', '2023-07-09', 'Withdrawal', 2000.00);

-- =====================================================
-- Business Question:
-- Calculate the final balance for each customer account
-- after considering all deposits and withdrawals.
-- =====================================================

SELECT
    AccountNumber,
    AccountHolderName,
    SUM(
        CASE
            WHEN TransactionType = 'Deposit'
                THEN TransactionAmount
            ELSE -TransactionAmount
        END
    ) AS TotalBalance
FROM Transactions
GROUP BY
    AccountNumber,
    AccountHolderName
ORDER BY
    AccountNumber;
# Ride Cancellation Analysis

## Project Overview

This project analyzes ride request data to calculate the daily cancellation rate for trips involving non-banned users.

Using SQL, trip and user data are combined to identify cancelled rides and measure cancellation trends, providing insights into service reliability.

---

## Business Problem

Ride-sharing platforms need to monitor cancellation rates to evaluate service quality and customer experience.

This analysis aims to answer:

- What is the daily ride cancellation rate?
- How many ride requests are cancelled each day?
- How do non-banned users contribute to cancellation trends?

---

## Dataset Description

The project uses two tables.

### Trips Table

| Column | Description |
|---|---|
| id | Trip identifier |
| client_id | Customer requesting the ride |
| driver_id | Assigned driver |
| city_id | City identifier |
| status | Trip status |
| request_at | Ride request date |

### Users Table

| Column | Description |
|---|---|
| users_id | User identifier |
| banned | User ban status |
| role | Client or Driver |

---

## Analysis Performed

- Filtered trips involving non-banned customers.
- Identified cancelled rides.
- Calculated the daily cancellation rate.
- Summarized cancellation trends by request date.

---

## SQL Concepts Used

- CREATE TABLE
- INSERT Statements
- JOIN
- CASE Statements
- SUM()
- GROUP BY
- ROUND()
- Aggregate Functions

---

## Business Questions Answered

1. What is the cancellation rate for each day?
2. How many ride requests were cancelled?
3. How do non-banned users impact cancellation metrics?

---

## Key Insights

- Daily cancellation rates help monitor platform performance.
- Filtering banned users provides a more accurate service quality assessment.
- SQL aggregation enables efficient operational reporting.

---

## Business Recommendations

- Investigate periods with high cancellation rates.
- Monitor cancellation trends regularly to improve service quality.
- Analyze driver and customer behavior to reduce cancellations.

---

## Project Structure

```
Ride-Cancellation-Analysis

│
├── README.md
└── solution.sql
```

---

## Conclusion

This project demonstrates how SQL can be used to measure ride cancellation rates and generate operational insights for ride-sharing platforms.
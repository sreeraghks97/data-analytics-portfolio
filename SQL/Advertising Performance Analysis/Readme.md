# Advertising Performance Analysis

## Project Overview

This project analyzes advertisement-level performance data to identify the most effective advertisements based on user engagement.

The analysis focuses on calculating **Click Through Rate (CTR)**, a key advertising metric that measures how effectively an advertisement converts impressions into clicks.

Using SQL, advertisements are evaluated and ranked based on their CTR performance to identify top-performing ads.

---

## Business Problem

Businesses invest in multiple advertisements and need to understand which ads generate better user engagement.

The objective of this analysis is to answer:

- Which advertisements attract the highest user engagement?
- Which advertisements have the highest Click Through Rate (CTR)?
- How can businesses identify better-performing advertisements?

---

## Dataset Description

The dataset contains advertisement performance information.

| Column | Description |
|---|---|
| adId | Unique identifier for each advertisement |
| Impressions | Number of times the advertisement was displayed |
| Clicks | Number of users who clicked on the advertisement |
| Cost | Amount spent on the advertisement |

---

## Key Metric

### Click Through Rate (CTR)

CTR measures the percentage of users who clicked on an advertisement after viewing it.


Formula:CTR = (Clicks / Views) × 100


A higher CTR indicates that an advertisement is generating stronger user engagement.

---

## Analysis Performed

### 1. Calculate Advertisement CTR

Calculated the Click Through Rate for each advertisement using impressions and clicks.

### 2. Rank Advertisements Based on CTR

Sorted advertisements from highest to lowest CTR to identify the best-performing advertisements.

### 3. Compare Advertisement Performance

Compared impressions, clicks, CTR, and advertising cost to understand overall advertisement effectiveness.

---

## SQL Concepts Used

- Table Creation
- Data Insertion
- Calculated Columns
- Mathematical Operations
- ROUND Function
- CONCAT Function
- ORDER BY
- Data Formatting

---

## Business Questions Answered

1. What is the Click Through Rate (CTR) for each advertisement?
2. Which advertisements have the highest CTR?
3. Which advertisements generate better engagement based on clicks and impressions?
4. How do advertisements compare based on performance and cost?

---

## Key Insights

The analysis helps identify:

- Advertisements generating higher user engagement.
- Ads with strong performance based on audience interaction.
- Opportunities to improve advertising strategies.

---

## Business Recommendations

Based on CTR analysis:

- Allocate more budget towards advertisements with higher engagement rates.
- Review low-performing advertisements and improve targeting or creative strategies.
- Monitor CTR regularly to measure advertisement effectiveness.
- Consider both engagement metrics and advertising cost while making budget decisions.

---

## Project Structure

Advertising-Performance-Analysis

│
├── README.md
└── solution.sql


---

## Conclusion

This project demonstrates how SQL can be used to analyze advertising performance, calcu
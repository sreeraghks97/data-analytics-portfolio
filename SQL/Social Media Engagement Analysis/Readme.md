# Social Media Engagement Analysis

## Project Overview

This project analyzes user interactions on a social media platform to measure engagement across posts.

Using SQL, post and reaction data are analyzed to calculate engagement metrics, identify active users, and determine the most engaging posts.

---

## Business Problem

Social media platforms need to understand how users interact with content to improve engagement and optimize content strategies.

This analysis aims to answer:

- How many likes, comments, and shares does each post receive?
- What is the average number of reactions per user?
- Which posts generate the highest engagement?

---

## Dataset Description

The project uses two tables.

### Posts Table

| Column | Description |
|---|---|
| post_id | Unique post identifier |
| post_content | Content of the post |
| post_date | Date and time the post was published |

### UserReactions Table

| Column | Description |
|---|---|
| reaction_id | Unique reaction identifier |
| user_id | User identifier |
| post_id | Related post identifier |
| reaction_type | Type of reaction (Like, Comment, Share) |
| reaction_date | Date and time of the reaction |

---

## Analysis Performed

- Calculated likes, comments, and shares for a selected post.
- Measured average reactions per user by day.
- Identified the top three most engaging posts.

---

## SQL Concepts Used

- CREATE TABLE
- INSERT Statements
- JOIN
- CASE Statements
- COUNT()
- GROUP BY
- Aggregate Functions
- Date Functions
- ORDER BY
- LIMIT

---

## Business Questions Answered

1. How many likes, comments, and shares did a post receive?
2. What is the average number of reactions per user each day?
3. Which posts generated the highest user engagement?

---

## Key Insights

- Engagement metrics help evaluate content performance.
- Highly engaged posts can guide future content strategies.
- User interaction trends support better audience engagement.

---

## Business Recommendations

- Create more content similar to high-performing posts.
- Track engagement metrics regularly to measure content effectiveness.
- Encourage user interactions to improve overall platform engagement.

---

## Project Structure

```
Social-Media-Engagement-Analysis

│
├── README.md
└── solution.sql
```

---

## Conclusion

This project demonstrates how SQL can be used to analyze user engagement, measure content performance, and generate actionable insights for social media platforms.
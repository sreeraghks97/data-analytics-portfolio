
/*
=========================================================
Project Name : Social Media Engagement Analysis

Objective:
Analyze user engagement by measuring likes,
comments, shares, average reactions per user,
and identifying the most engaging posts.

Tools Used:
PostgreSQL
SQL

=========================================================
*/


-- =====================================================
-- Create Posts Table
-- =====================================================

CREATE TABLE Posts (
    post_id INT,
    post_content TEXT,
    post_date TIMESTAMP
);


-- =====================================================
-- Create UserReactions Table
-- =====================================================

CREATE TABLE UserReactions (
    reaction_id INT,
    user_id INT,
    post_id INT,
    reaction_type TEXT,
    reaction_date TIMESTAMP
);


-- =====================================================
-- Insert Posts Data
-- =====================================================

INSERT INTO Posts (post_id, post_content, post_date)
VALUES
(1,'Lorem ipsum dolor sit amet','2023-08-25 10:00:00'),
(2,'Exploring the beauty of nature','2023-08-26 15:30:00'),
(3,'Unveiling the latest tech trends','2023-08-27 12:00:00'),
(4,'Journey into the world of literature','2023-08-28 09:45:00'),
(5,'Capturing the essence of city life','2023-08-29 16:20:00');


-- =====================================================
-- Insert User Reactions
-- =====================================================

INSERT INTO UserReactions (reaction_id, user_id, post_id, reaction_type, reaction_date)
VALUES
(1,101,1,'like','2023-08-25 10:15:00'),
(2,102,1,'comment','2023-08-25 11:30:00'),
(3,103,1,'share','2023-08-26 12:45:00'),
(4,101,2,'like','2023-08-26 15:45:00'),
(5,102,2,'comment','2023-08-27 09:20:00'),
(6,104,2,'like','2023-08-27 10:00:00'),
(7,105,3,'comment','2023-08-27 14:30:00'),
(8,101,3,'like','2023-08-28 08:15:00'),
(9,103,4,'like','2023-08-28 10:30:00'),
(10,105,4,'share','2023-08-29 11:15:00'),
(11,104,5,'like','2023-08-29 16:30:00'),
(12,101,5,'comment','2023-08-30 09:45:00');


-- =====================================================
-- Business Question 1:
-- Count likes, comments, and shares for a post.
-- =====================================================

SELECT
    p.post_id,
    p.post_content,
    COUNT(CASE WHEN ur.reaction_type = 'like' THEN 1 END) AS Likes,
    COUNT(CASE WHEN ur.reaction_type = 'comment' THEN 1 END) AS Comments,
    COUNT(CASE WHEN ur.reaction_type = 'share' THEN 1 END) AS Shares
FROM Posts p
JOIN UserReactions ur
ON p.post_id = ur.post_id
WHERE p.post_id = 2
GROUP BY p.post_id, p.post_content;


-- =====================================================
-- Business Question 2:
-- Calculate average reactions per user by day.
-- =====================================================

SELECT
    DATE(reaction_date) AS ReactionDate,
    COUNT(DISTINCT user_id) AS DistinctUsers,
    COUNT(*) AS TotalReactions,
    ROUND(COUNT(*)::DECIMAL / COUNT(DISTINCT user_id), 4) AS AvgReactionsPerUser
FROM UserReactions
GROUP BY DATE(reaction_date)
ORDER BY ReactionDate;


-- =====================================================
-- Business Question 3:
-- Identify the top three most engaging posts.
-- =====================================================

SELECT
    p.post_id,
    p.post_content,
    COUNT(*) AS TotalReactions
FROM Posts p
JOIN UserReactions ur
ON p.post_id = ur.post_id
GROUP BY p.post_id, p.post_content
ORDER BY TotalReactions DESC
LIMIT 3;
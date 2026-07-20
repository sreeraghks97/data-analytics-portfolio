/*
========================================================

Project Name:
Advertising Performance Analysis

Business Objective:
Analyze advertisement performance by calculating
Click Through Rate (CTR) and identifying
top-performing advertisements.

Metric Used:

CTR = (Clicks / Impressions) * 100

========================================================
*/


-- ======================================================
-- Create Advertisement Performance Table
-- ======================================================

CREATE TABLE Advertisements (
    adId INT PRIMARY KEY,
    Impressions INT,
    Clicks INT,
    Cost DECIMAL(10,2)
);



-- ======================================================
-- Insert Advertisement Data
-- ======================================================

INSERT INTO Advertisements 
(adId, Impressions, Clicks, Cost)
VALUES
(1,1000,50,20.50),
(2,800,30,15.20),
(3,1200,80,25.70),
(4,600,20,10.90),
(5,1500,120,40.30);



-- ======================================================
-- Business Question:
-- Identify top-performing advertisements based on CTR
-- ======================================================


SELECT
    adId,
    CONCAT(
        ROUND((Clicks * 100.0 / Impressions),1),
        '%'
    ) AS CTR,
    Impressions,
    Clicks,
    Cost
FROM Advertisements
ORDER BY 
    (Clicks * 100.0 / Impressions) DESC;

/*
=========================================================
Project Name : Ride Cancellation Analysis

Objective:
Calculate the daily ride cancellation rate for
non-banned customers.

Tools Used:
PostgreSQL
SQL

=========================================================
*/


-- =====================================================
-- Create Users Table
-- =====================================================

CREATE TABLE Users (
    users_id INT,
    banned VARCHAR(3),
    role VARCHAR(10)
);


-- =====================================================
-- Insert User Data
-- =====================================================

INSERT INTO Users (users_id, banned, role)
VALUES
(1,'No','client'),
(2,'Yes','client'),
(3,'No','client'),
(4,'No','client'),
(10,'No','driver'),
(11,'No','driver'),
(12,'No','driver'),
(13,'No','driver');


-- =====================================================
-- Create Trips Table
-- =====================================================

CREATE TABLE Trips (
    id INT,
    client_id INT,
    driver_id INT,
    city_id INT,
    status VARCHAR(25),
    request_at DATE
);


-- =====================================================
-- Insert Trip Data
-- =====================================================

INSERT INTO Trips
(id, client_id, driver_id, city_id, status, request_at)
VALUES
(1,1,10,1,'completed','2023-07-12'),
(2,2,11,1,'cancelled_by_driver','2023-07-12'),
(3,3,12,6,'completed','2023-07-12'),
(4,4,13,6,'cancelled_by_client','2023-07-12'),
(5,1,10,1,'completed','2023-07-13'),
(6,2,11,6,'completed','2023-07-13'),
(7,3,12,6,'completed','2023-07-13'),
(8,2,12,12,'completed','2023-07-14'),
(9,3,10,12,'completed','2023-07-14'),
(10,4,13,12,'cancelled_by_driver','2023-07-14');


-- =====================================================
-- Business Question:
-- Calculate the daily cancellation rate for
-- trips requested by non-banned customers.
-- =====================================================

SELECT
    t.request_at AS Day,
    ROUND(
        SUM(
            CASE
                WHEN t.status IN ('cancelled_by_driver','cancelled_by_client')
                THEN 1
                ELSE 0
            END
        )::DECIMAL / COUNT(*),
        2
    ) AS CancellationRate
FROM Trips t
JOIN Users u
ON t.client_id = u.users_id
WHERE u.banned = 'No'
  AND u.role = 'client'
GROUP BY t.request_at
ORDER BY t.request_at;
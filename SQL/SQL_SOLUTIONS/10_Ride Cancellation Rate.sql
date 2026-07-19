CREATE TABLE Users (
    users_id INT,
    banned VARCHAR(3),
    ROLE VARCHAR(10)
);
INSERT INTO Users (users_id, banned, ROLE) VALUES
(1, 'No', 'client'),
(2, 'Yes', 'client'),
(3, 'No', 'client'),
(4, 'No', 'client'),
(10, 'No', 'driver'),
(11, 'No', 'driver'),
(12, 'No', 'driver'),
(13, 'No', 'driver');

CREATE TABLE Trips (
    id INT,
    client_id INT,
    driver_id INT,
    city_id INT,
    status VARCHAR(25),
    request_at DATE
);

INSERT INTO Trips (id, client_id, driver_id, city_id, status, request_at) VALUES
(1, 1, 10, 1, 'completed', '2023-07-12'),
(2, 2, 11, 1, 'cancelled_by_driver', '2023-07-12'),
(3, 3, 12, 6, 'completed', '2023-07-12'),
(4, 4, 13, 6, 'cancelled_by_client', '2023-07-12'),
(5, 1, 10, 1, 'completed', '2023-07-13'),
(6, 2, 11, 6, 'completed', '2023-07-13'),
(7, 3, 12, 6, 'completed', '2023-07-13'),
(8, 2, 12, 12, 'completed', '2023-07-14'),
(9, 3, 10, 12, 'completed', '2023-07-14'),
(10, 4, 13, 12, 'cancelled_by_driver', '2023-07-14');

SELECT Trips.request_at AS DAY, ROUND(SUM(CASE WHEN Trips.status='cancelled_by_driver' OR Trips.status='cancelled_by_client' THEN 1 ELSE 0 END)::DECIMAL/count(*),2) AS "cancellation rate"  FROM Trips JOIN Users ON Trips.client_id = Users.users_id WHERE  Users.banned='No' AND Users.role='client' GROUP BY Trips.request_at ORDER BY Trips.request_at;


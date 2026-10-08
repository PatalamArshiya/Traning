USE new_schema;

CREATE TABLE player_match_details (
    name VARCHAR(250),
    match_id VARCHAR(10),
    score INTEGER,
    fours INTEGER,
    sixes INTEGER,
    year INTEGER
);


USE new_schema;

SHOW TABLES;
INSERT INTO player_match_details
(name, match_id, score, fours, sixes, year)
VALUES
('Virat Kohli', 'M001', 85, 8, 2, 2022),
('Rohit Sharma', 'M002', 102, 10, 5, 2022),
('KL Rahul', 'M003', 65, 6, 2, 2022),
('Hardik Pandya', 'M004', 45, 3, 3, 2022),
('Rishabh Pant', 'M005', 72, 7, 2, 2022),
('Shubman Gill', 'M006', 58, 5, 1, 2022),
('Suryakumar Yadav', 'M007', 91, 7, 4, 2022),
('Ravindra Jadeja', 'M008', 38, 3, 1, 2022),
('Shreyas Iyer', 'M009', 67, 6, 2, 2022),
('Sanju Samson', 'M010', 54, 5, 2, 2022),
('Virat Kohli', 'M011', 112, 11, 3, 2023),
('Rohit Sharma', 'M012', 78, 7, 4, 2023),
('KL Rahul', 'M013', 95, 8, 3, 2023),
('Hardik Pandya', 'M014', 52, 4, 3, 2023),
('Rishabh Pant', 'M015', 64, 6, 2, 2023),
('Shubman Gill', 'M016', 105, 9, 4, 2023),
('Suryakumar Yadav', 'M017', 76, 6, 4, 2023),
('Ravindra Jadeja', 'M018', 48, 4, 1, 2023),
('Shreyas Iyer', 'M019', 82, 8, 2, 2023),
('Sanju Samson', 'M020', 61, 5, 3, 2023),
('Virat Kohli', 'M021', 73, 6, 1, 2024),
('Rohit Sharma', 'M022', 118, 12, 5, 2024),
('KL Rahul', 'M023', 88, 7, 3, 2024),
('Hardik Pandya', 'M024', 35, 2, 2, 2024),
('Rishabh Pant', 'M025', 97, 9, 4, 2024),
('Shubman Gill', 'M026', 69, 7, 1, 2024),
('Suryakumar Yadav', 'M027', 101, 9, 6, 2024),
('Ravindra Jadeja', 'M028', 55, 5, 2, 2024),
('Shreyas Iyer', 'M029', 44, 4, 1, 2024),
('Sanju Samson', 'M030', 79, 6, 4, 2024),
('Virat Kohli', 'M031', 96, 9, 2, 2025),
('Rohit Sharma', 'M032', 65, 6, 3, 2025),
('KL Rahul', 'M033', 110, 10, 4, 2025),
('Hardik Pandya', 'M034', 62, 5, 3, 2025),
('Rishabh Pant', 'M035', 83, 7, 3, 2025),
('Shubman Gill', 'M036', 92, 8, 3, 2025),
('Suryakumar Yadav', 'M037', 115, 10, 7, 2025),
('Ravindra Jadeja', 'M038', 41, 3, 2, 2025),
('Shreyas Iyer', 'M039', 73, 7, 2, 2025),
('Sanju Samson', 'M040', 86, 8, 4, 2025),
('Virat Kohli', 'M041', 55, 5, 1, 2026),
('Rohit Sharma', 'M042', 89, 8, 4, 2026),
('KL Rahul', 'M043', 71, 6, 2, 2026),
('Hardik Pandya', 'M044', 48, 4, 2, 2026),
('Rishabh Pant', 'M045', 108, 10, 5, 2026),
('Shubman Gill', 'M046', 77, 7, 2, 2026),
('Suryakumar Yadav', 'M047', 93, 8, 5, 2026),
('Ravindra Jadeja', 'M048', 63, 5, 2, 2026),
('Shreyas Iyer', 'M049', 58, 5, 1, 2026),
('Sanju Samson', 'M050', 99, 9, 5, 2026),
('Virat Kohli', 'M051', 67, 6, 2, 2026),
('Rohit Sharma', 'M052', 125, 13, 5, 2026),
('KL Rahul', 'M053', 82, 8, 2, 2026),
('Hardik Pandya', 'M054', 57, 4, 3, 2026),
('Rishabh Pant', 'M055', 74, 6, 2, 2026),
('Shubman Gill', 'M056', 111, 10, 4, 2026),
('Suryakumar Yadav', 'M057', 68, 5, 4, 2026),
('Ravindra Jadeja', 'M058', 47, 4, 1, 2026),
('Shreyas Iyer', 'M059', 91, 9, 2, 2026),
('Sanju Samson', 'M060', 76, 7, 3, 2026);


SELECT COUNT(*)
FROM player_match_details;

SELECT SUM(score)
FROM player_match_details
WHERE name = "Ram";

SELECT MAX(score), MIN(score)
FROM player_match_details
WHERE year = 2011;

SELECT COUNT(*)
FROM player_match_details;

SELECT COUNT(*)
FROM player_match_details;



SELECT
    SUM(score),
    MAX(score),
    MIN(score),
    AVG(score),
    COUNT(score)
FROM player_match_details;

SELECT name AS player_name
FROM player_match_details;

SELECT AVG(score) AS avg_score
FROM player_match_details;


SELECT
    name,
    year,
    SUM(score) AS total_score
FROM player_match_details
GROUP BY name, year;


SELECT
    name,
    COUNT(*) AS half_centuries
FROM player_match_details
WHERE score >= 50
GROUP BY name;

SELECT
    name,
    COUNT(*) AS half_centuries
FROM player_match_details
WHERE score >= 50
GROUP BY name
HAVING half_centuries > 1;
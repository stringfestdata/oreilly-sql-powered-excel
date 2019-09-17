-- Largest attendance
-- recorded for each team, sorted from high
-- to low

SELECT MAX(attendance) as max_attendance, name
FROM Teams
GROUP BY name
ORDER BY max_attendance DESC;

-- Get rid of the nulls
SELECT MAX(attendance) as max_attendance, name
FROM Teams
GROUP BY name
HAVING max_attendance IS NOT NULL
ORDER BY max_attendance DESC;

-- Get total number of stolen bases
-- For each year and league
SELECT yearID, lgID, SUM(SB) as total_stolen_bases
FROM Teams
GROUP BY yearID, lgID;


-- Average number of home runs for 
-- each year, keeping only years
-- with average of 150 home runs

SELECT AVG(HR) AS avg_hr, yearID
FROM Teams
GROUP BY yearID
HAVING avg_hr >= 150; 
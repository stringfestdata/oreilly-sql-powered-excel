-- Largest attendance
-- recorded for each team, sorted from high
-- to low

SELECT MAX(attendance) as max_attendance, name
FROM Teams
GROUP BY teamID
ORDER BY max_attendance DESC;


-- Average number of home runs for 
-- each year, keeping only years
-- with average of 150 home runs

SELECT AVG(HR) AS avg_hr, yearID
FROM Teams
GROUP BY yearID
HAVING avg_hr >= 150; 
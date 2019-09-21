SELECT * FROM Teams;

-- What teams had more wins
-- than the 2016 Chicago Cubs?
-- (They had 103 wins)

SELECT yearID, name, W
FROM Teams
WHERE W >
    (SELECT W
    FROM Teams
    WHERE yearID = 2016 AND teamID = 'CHN')
ORDER BY W DESC;


-- Group yearID by 19th, 20th, 21st
SELECT yearID, name,
    CASE
        WHEN yearID BETWEEN 1801 AND 1900 THEN 19
        WHEN yearID BETWEEN 1901 AND 1900 THEN 20
        WHEN yearID BETWEEN 2001 AND 2100 THEN 21
        ELSE NULL END AS 'Century'
FROM Teams
ORDER BY yearID;

SELECT * FROM Teams;

-- Average of minimum attendance
-- by season
-- since 1990
WITH min_attendance AS 
(
        SELECT yearID, MIN(attendance) AS min_attendance
        FROM Teams
        GROUP BY yearID
)
SELECT AVG(min_attendance) AS avg_min_attendance
        FROM min_attendance
        WHERE yearID >= 1990;
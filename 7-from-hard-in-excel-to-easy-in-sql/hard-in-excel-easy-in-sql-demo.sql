-- Subqueries

-- Who is taller than 
-- Randy Johnson? 
-- playerID == johnsra05

SELECT height, playerID
FROM Master
WHERE playerID = 'johnsra05';

SELECT height, playerID
FROM Master
WHERE height > 
-- Subquery:
-- What is Randy Johnson's 
    (SELECT height
    FROM Master
    WHERE playerID = 'johnsra05');
    
-- Compare to another player

SELECT height, playerID
FROM Master
WHERE height > 
    (SELECT height
    FROM Master
    WHERE playerID = 'johnsra04');
    
-- CASE statements:
-- Create country groupings:
-- USA/USA-bordering/Other
    
-- Group by countries
-- See what countries there are...

SELECT DISTINCT birthCountry 
FROM Master
ORDER BY birthCountry;

-- Order by groups
SELECT playerID, birthCountry,
-- Case statement: map conditions to values 
-- of the corresponding field
    CASE
        WHEN birthCountry = 'USA' THEN 'USA'
        WHEN birthCountry = 'CAN' OR 'Mexico' THEN 'USA-Bordering'
        ELSE 'Other' END AS 'CountryGroup'
FROM Master
ORDER BY  birthCountry;


-- Common table expression

-- Average of max height
-- by country
WITH max_height AS 
(
        SELECT birthCountry, MAX(height) AS max_height
        FROM Master
        GROUP BY birthCountry
)
SELECT AVG(max_height) AS avg_max_height
        FROM max_height;
        
-- Finding our orphaned college players

WITH college_playing_null AS (
    SELECT CollegePlaying.schoolID, playerID, yearID, name_full, city, state
    FROM CollegePlaying LEFT OUTER JOIN Schools
    ON CollegePlaying.schoolID = Schools.schoolID
    WHERE Schools.schoolID IS NULL)

SELECT college_playing_null.playerID, schoolID, yearID, nameFirst, nameLast
FROM college_playing_null LEFT OUTER JOIN Master
ON college_playing_null.playerID = Master.playerID;

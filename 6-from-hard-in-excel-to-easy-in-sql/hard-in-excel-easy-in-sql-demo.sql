-- Who is taller than 
-- Randy Johnson? 
-- playerID == johnsra05

SELECT height, playerID
FROM Master
WHERE playerID = 'johnsra05';

SELECT height, playerID
FROM Master
WHERE height > 
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
ORDER BY CountryGroup, birthCountry;

-- Average of max height
-- by country
WITH avg_height AS 
(
        SELECT birthCountry, MAX(height) AS max_height
        FROM Master
        GROUP BY birthCountry
)
SELECT AVG(max_height) AS avg_max_height
        FROM avg_height;
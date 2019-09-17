-- Select all records
-- Sorted newest to oldest
-- Then by playerID A-Z

SELECT * 
FROM Managers
ORDER BY yearID DESC, playerID;

-- Select all records
-- between the 1991 and 2000 seasons
-- sorted high to low by number of games, G

SELECT *
FROM Managers
WHERE yearID BETWEEN 1991 AND 2000
ORDER BY G DESC;

-- Create a field win_diff,
-- calculated as W - L.
-- Return the records with the 
-- highest 25 win_diff. 

SELECT playerID, yearID, W - L AS win_diff
FROM Managers
ORDER BY win_diff DESC
LIMIT 25;

-- How many NULL values
-- are in the rank field?

SELECT *
FROM Managers
WHERE rank IS NULL;

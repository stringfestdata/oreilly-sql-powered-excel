-- Select all columns from Parks table

SELECT *
FROM Parks;

-- Select all columns from Master table
SELECT * 
FROM Master;

-- Select JUST playerID, height, weight
SELECT playerID, height, weight
FROM Master;

-- Select playerID, deathYear - birthYear
SELECT playerID, deathYear - birthYear
FROM Master;

-- Alias as year_at_death
SELECT playerID, deathYear - birthYear AS year_at_death
FROM Master;

-- String first and last names together: ||
SELECT playerID, nameFirst || nameLast
FROM Master;


-- Add spacing: ||
SELECT playerID, nameFirst || ' ' || nameLast
FROM Master;
-- Column-level aggregation
SELECT SUM(height), AVG(height), MAX(height), MIN(height)
FROM Master;

-- Don't forget to alias!
-- "Learn the rules well
-- so you can break them properly"
SELECT SUM(height) AS sum_height, 
    AVG(height) AS avg_height,
    MAX(height) AS max_height,
    MIN(height) AS min_height
FROM Master;

-- Results of aggregates
-- will vary with other clauses
SELECT AVG(height) AS avg_height
FROM Master
WHERE birthYear < 1980;

SELECT AVG(height) AS avg_height
FROM Master
WHERE birthYear >= 1980;

-- Can also count rows
SELECT COUNT(birthYear), COUNT(deathYear) 
FROM Master;

-- It's all about the NULLs!
SELECT playerID, MAX(height) AS max_height_no_birthday 
FROM Master
WHERE birthDay IS NULL;

-- It's all about the NOT NULLs!
SELECT playerID, MAX(height) AS max_height_no_birthday 
FROM Master
WHERE birthDay IS NOT NULL;

-- Count all records
SELECT COUNT(*)
FROM Master;

-- Calculations atop aggregations
SELECT COUNT(birthYear) - COUNT(deathYear) AS known_birth_unknown_death
FROM Master;

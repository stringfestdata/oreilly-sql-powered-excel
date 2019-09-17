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

-- Apply conditions to aggregates
SELECT AVG(height) AS avg_height
FROM Master
WHERE birthYear < 1980;

SELECT AVG(height) AS avg_height
FROM Master
WHERE birthYear >= 1980;

-- Can also count rows
-- Count total number of records

SELECT COUNT(*)
FROM Master;

SELECT *
FROM Master;

SELECT COUNT(birthYear) AS count_birthyear, 
    COUNT(deathYear) AS count_deathyear
FROM Master;

-- It's all about the NULLs!
SELECT playerID, nameFirst, nameLast, birthYear 
FROM Master
WHERE birthYear IS NULL;

-- It's all about the NULLs!
SELECT playerID, nameFirst, nameLast, birthDay 
FROM Master
WHERE birthDay IS NOT NULL;

-- NULLs are excluded from averages
SELECT SUM(height)/COUNT(*) AS total_height
FROM Master;

SELECT AVG(height) AS total_height
FROM Master;

-- How many types of hitting positions
-- are there?

SELECT DISTINCT bats
FROM Master; 

-- How many distinct surnames
-- are there?

SELECT DISTINCT nameLast
FROM Master;

-- Get a record count instead
SELECT COUNT(DISTINCT nameLast) 
FROM Master;
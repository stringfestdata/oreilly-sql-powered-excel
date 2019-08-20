-- Select all records for
-- players born in December

SELECT * 
FROM Master
WHERE birthMonth = 12;

-- Select names of 
-- Christmas babies
SELECT nameFirst, nameLast
FROM Master
WHERE birthMonth = 12 AND birthDay = 25;

-- Compare record count to OR operator...
SELECT nameFirst, nameLast, birthMonth, birthDay
FROM Master
WHERE birthMonth = 12 OR birthDay = 25;

-- Players born between 1901 and 1950
SELECT *
FROM Master
WHERE birthYear BETWEEN 1901 AND 1950;

-- Let's sort these results by year...
SELECT * 
FROM Master
WHERE birthYear BETWEEN 1901 AND 1950
ORDER BY birthYear;

-- Order descending...
SELECT * 
FROM Master
WHERE birthYear BETWEEN 1901 AND 1950
ORDER BY birthYear DESC;

-- Order by both year and month...
SELECT * 
FROM Master
WHERE birthYear BETWEEN 1901 AND 1950
ORDER BY birthYear, birthMonth;

-- Order by age_at_death...
SELECT nameFirst, nameLast, deathYear - birthYear AS age_at_death
FROM Master
ORDER BY age_at_death DESC;

-- Limit to top 10...
SELECT nameFirst, nameLast, deathYear - birthYear AS age_at_death
FROM Master
ORDER BY age_at_death DESC
LIMIT 10;
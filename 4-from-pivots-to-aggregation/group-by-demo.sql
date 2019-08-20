-- Max height for each 
-- birth country

SELECT MAX(height), birthCountry
FROM Master;

-- Something's not quite right...

SELECT MAX(height), MAX(birthCountry)
FROM Master;

-- That is correct syntax but not what
-- we are looking for...

SELECT MAX(height), birthCountry
FROM Master
GROUP BY birthCountry;

-- Same rules apply for other clauses...

SELECT MAX(height) as max_height, birthCountry
FROM Master
GROUP BY birthCountry
ORDER BY max_height DESC;

SELECT MAX(height) as max_height, birthCountry
FROM Master
WHERE birthYear < 1950
GROUP BY birthCountry
ORDER BY max_height DESC;

-- but NOT the grouped by aggregate...
-- Error while executing SQL query on database 'lahman2016': misuse of aggregate: MAX()
SELECT MAX(height) as max_height, birthCountry
FROM Master
WHERE max_height > 72
GROUP BY birthCountry
ORDER BY max_height DESC;

-- Instead use HAVING
-- *before* ORDER BY! 
SELECT MAX(height) as max_height, birthCountry
FROM Master
GROUP BY birthCountry
HAVING max_height >= 78
ORDER BY max_height DESC;

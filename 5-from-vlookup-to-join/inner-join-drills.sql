-- INNER JOINS --

-- 1. Return a list of unique first and 
-- last names for all individuals in HallOfFame 

SELECT DISTINCT nameFirst, nameLast
FROM Master INNER JOIN HallOfFame
ON Master.playerID = HallOfFame.playerID;

-- 2. Return first, last names
-- along with year, votes needed and
-- votes received for all HoF inductees

SELECT nameFirst, nameLast, yearID, votes, needed
FROM Master INNER JOIN HallOfFame
ON Master.playerID = HallOfFame.playerID
WHERE inducted = 'Y';

-- 3. Return the birth year
-- of the oldest individual inducted
-- for each year of HoF inductions

SELECT yearID, MIN(birthYear) AS min_birthyear, yearID - MIN(birthYear) AS age_at_induction
FROM Master INNER JOIN HallOfFame
ON Master.playerID = HallOfFame.playerID
GROUP BY yearID;

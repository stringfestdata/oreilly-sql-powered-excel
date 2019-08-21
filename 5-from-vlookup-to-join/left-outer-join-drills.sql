-- LEFT OUTER JOINS --

-- 1. Left outer join 
-- First name, last name, and maximum salary
-- for EVERYONE on the Master table
-- validate this in Excel

SELECT yearID, playerID, nameFirst, nameLast, MAX(salary)
FROM Master LEFT OUTER JOIN Salaries
ON Master.playerID = Salaries.playerID
GROUP BY Master.playerID, nameFirst, nameLast
HAVING Max(salary) > 1000000
ORDER BY MAX(salary) DESC;

-- 2. Keeping all college names,
-- include first name, last name and
-- years played for those schools along with the 
-- school's full name.  

SELECT name_full, nameFirst, nameLast, yearID
FROM Schools 

LEFT OUTER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID

LEFT OUTER JOIN Master
ON CollegePlaying.playerID = Master.playerID;

SELECT *
FROM Schools;

-- LEFT OUTER JOINS --
SELECT playerID, yearID, name_full, city, state
FROM Schools LEFT OUTER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID;

-- What would happen with an inner? 
SELECT playerID, yearID, name_full, city, state
FROM Schools INNER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID;


-- What about this way? 
-- Ordering matters
SELECT playerID, yearID, name_full, city, state
FROM CollegePlaying LEFT OUTER JOIN Schools
ON CollegePlaying.schoolID = Schools.schoolID;

-- There are 10 additional records
-- than what showed up in INNER
-- What is the difference?
SELECT playerID, yearID, name_full, city, state
FROM CollegePlaying LEFT OUTER JOIN Schools
ON CollegePlaying.schoolID = Schools.schoolID
WHERE Schools.schoolID IS NULL;

-- How do we know who these people are?
-- Stay tuned next lesson.... 

-- In the meantime, let's
-- Join on multiple tables
-- What if we wanted to know first and last names? 

SELECT playerID, nameFirst, nameLast, yearID, name_full, city, state
FROM Schools 

LEFT OUTER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID

LEFT OUTER JOIN Master
ON Master.playerID = CollegePlaying.playerID;

-- Drawing a picture can help! 
-- Schemas  

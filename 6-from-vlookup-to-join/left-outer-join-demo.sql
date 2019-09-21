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

-- What is the difference?
SELECT playerID, yearID, name_full, city, state
FROM CollegePlaying LEFT OUTER JOIN Schools
ON CollegePlaying.schoolID = Schools.schoolID
WHERE Schools.schoolID IS NULL;



-- Add firstname and lastname?
-- Join on multiple tables
SELECT playerID, nameFirst, nameLast, yearID, name_full, city, state
FROM Schools 

LEFT OUTER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID

LEFT OUTER JOIN Master
ON Master.playerID = CollegePlaying.playerID;

-- Drawing a picture can help! 


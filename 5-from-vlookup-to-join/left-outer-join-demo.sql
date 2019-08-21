-- LEFT OUTER JOINS --
SELECT playerID, yearID, name_full, city, state
FROM Schools LEFT OUTER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID;

-- What would happen with an inner? 
SELECT playerID, yearID, name_full, city, state
FROM Schools INNER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID;

-- Add firstname and lastname?
SELECT playerID, nameFirst, nameLast, yearID, name_full, city, state
FROM Schools 

LEFT OUTER JOIN CollegePlaying
ON Schools.schoolID = CollegePlaying.schoolID

LEFT OUTER JOIN Master
ON Master.playerID = CollegePlaying.playerID;

-- This is where drawing a picture can
-- come in handy! 


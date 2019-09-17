-- INNER JOINS --
SELECT *
FROM AwardsPlayers;

SELECT * 
FROM Master;

-- INNER JOIN
SELECT *
FROM Master INNER JOIN AwardsPlayers
ON Master.playerID = AwardsPlayers.playerID;

-- Check out the new fields!


-- what happened to Vic Janowicz?
-- janowvi01
SELECT *
FROM Master INNER JOIN AwardsPlayers
ON Master.playerID = AwardsPlayers.playerID
WHERE playerID = 'janowvi01';

-- Let's make it unambiguous
SELECT *
FROM Master INNER JOIN AwardsPlayers
ON Master.playerID = AwardsPlayers.playerID
WHERE Master.playerID = 'janowvi01';

-- Where is Vic Janowicz?
SELECT *
FROM Master
WHERE Master.playerID = 'janowvi01';

-- Select any fields
SELECT nameFirst, nameLast, awardID, yearID
FROM Master INNER JOIN AwardsPlayers
ON Master.playerID = AwardsPlayers.playerID;


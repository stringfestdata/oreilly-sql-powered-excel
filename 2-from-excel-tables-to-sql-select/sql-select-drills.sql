-- Select all columns from Teams table
SELECT *
FROM Teams;

-- Select all columns,
-- first 100 rows from Teams table
SELECT * 
FROM Teams
LIMIT 100;

-- Select yearID, teamID, W, L
SELECT yearID, teamID, W, L
FROM Teams;

-- Select yearID, teamID, win_diff (W - L)
SELECT yearID, teamID, W - L as win_diff
FROM Teams;

-- Field in format:
--1871 Boston Red Stockings: 20-10
SELECT yearID || ' ' || name || ': ' || W || '-' || L AS team_record
FROM Teams;
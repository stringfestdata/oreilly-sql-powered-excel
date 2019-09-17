-- List all the tables in our database
SELECT name 
FROM sqlite_master
WHERE type='table'
ORDER BY name;

--Get the name and data type from every field in the
--"master" table
PRAGMA table_info(master);

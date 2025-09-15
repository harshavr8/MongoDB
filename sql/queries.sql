-- 1) List all players
SELECT * FROM players;

-- 2) Find players who are Batsmen
SELECT name, matches, runs
FROM players
WHERE role = 'Batsman';

-- 3) Get the top scorer (highest runs)
SELECT name, runs
FROM players
ORDER BY runs DESC
LIMIT 1;

-- 4) Find all-rounders with more than 50 wickets
SELECT name, runs, wickets
FROM players
WHERE role = 'All-rounder' AND wickets > 50;

-- 5) Calculate the average runs scored by the team
SELECT AVG(runs) AS avg_runs
FROM players;


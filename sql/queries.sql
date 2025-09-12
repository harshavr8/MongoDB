-- 1) Get all batsmen
SELECT name, matches, runs FROM players WHERE role = 'Batsman';

-- 2) Players with more than 5000 runs
SELECT name, runs FROM players WHERE runs > 5000;

-- 3) Top 3 players by wickets
SELECT name, wickets FROM players ORDER BY wickets DESC LIMIT 3;

-- 4) Average runs across all players
SELECT AVG(runs) AS avg_runs FROM players;

-- 5) All-rounders with >1000 runs and >50 wickets
SELECT name, runs, wickets FROM players WHERE role = 'All-rounder' AND runs > 1000 AND wickets > 50;

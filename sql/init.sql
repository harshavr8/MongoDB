-- Create players table and insert sample data
CREATE TABLE players (
  player_id INTEGER PRIMARY KEY,
  name TEXT,
  role TEXT,
  batting_style TEXT,
  bowling_style TEXT,
  matches INTEGER,
  runs INTEGER,
  wickets INTEGER
);

INSERT INTO players (player_id, name, role, batting_style, bowling_style, matches, runs, wickets) VALUES
(1, 'Rohit Sharma', 'Batsman', 'Right-hand bat', 'Right-arm offbreak', 250, 10000, 10),
(2, 'Virat Kohli', 'Batsman', 'Right-hand bat', 'Right-arm medium', 270, 12000, 5),
(3, 'Jasprit Bumrah', 'Bowler', 'Right-hand bat', 'Right-arm fast', 100, 400, 200),
(4, 'Hardik Pandya', 'All-rounder', 'Right-hand bat', 'Right-arm medium-fast', 120, 2500, 80),
(5, 'Ravindra Jadeja', 'All-rounder', 'Left-hand bat', 'Left-arm orthodox', 180, 3000, 180);

# Cricket Team DB (MongoDB + SQL demo)

## Files
- `data/players.json` — MongoDB collection
- `sql/init.sql` — SQL schema + inserts
- `sql/queries.sql` — Example queries

## MongoDB
Import into MongoDB:
```
mongoimport --uri "mongodb://localhost:27017" --db cricketdb --collection players --file data/players.json --jsonArray
```

Then check:
```
mongosh
use cricketdb
db.players.find().pretty()
```

## SQLite (SQL demo)
Create DB & populate:
```
sqlite3 cricket.db < sql/init.sql
```

Run the example queries:

Run the 5 SQL queries provided in sql/queries.sql:

sqlite3 -header -column cricket.db < sql/queries.sql


Or run each query individually:

sqlite3 -header -column cricket.db "SELECT * FROM players;"
sqlite3 -header -column cricket.db "SELECT name, matches, runs FROM players WHERE role = 'Batsman';"
sqlite3 -header -column cricket.db "SELECT name, runs FROM players ORDER BY runs DESC LIMIT 1;"
sqlite3 -header -column cricket.db "SELECT name, runs, wickets FROM players WHERE role = 'All-rounder' AND wickets > 50;"
sqlite3 -header -column cricket.db "SELECT AVG(runs) AS avg_runs FROM players;"


These queries demonstrate:

Listing all players

Finding all batsmen

Retrieving the top scorer

Finding all-rounders with >50 wickets

Calculating the average runs of the team

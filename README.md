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
```
sqlite3 cricket.db < sql/queries.sql
```

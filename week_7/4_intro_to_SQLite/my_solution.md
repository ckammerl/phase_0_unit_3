# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->
<pro>christiane$ sqlite3 dummy.rb
-- Loading resources from /Users/christiane/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite></pro> 

## Release 1: Insert Data 
<!-- paste your terminal output here -->

## Release 2: Multi-line commands
<!-- paste your terminal output here -->

## Release 3: Add a column
<!-- paste your terminal output here -->

## Release 4: Change a value
<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->
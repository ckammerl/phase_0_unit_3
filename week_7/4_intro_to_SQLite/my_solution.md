# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->
<pre>christiane$ sqlite3 dummy.rb
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
sqlite></pre> 

## Release 1: Insert Data 
<!-- paste your terminal output here -->
<pre>sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Christiane', 'Kammerl', 'christiane.kammerl@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-24 19:40:20  2014-04-24 19:40:20
2           Christiane  Kammerl     christiane.kammerl@gm  2014-04-24 19:45:25  2014-04-24 19:45:25
sqlite></pre> 


## Release 2: Multi-line commands
<!-- paste your terminal output here -->
<pre>sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite></pre> 


## Release 3: Add a column
<!-- paste your terminal output here -->
<pre>sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(26);</pre>

<pre>sqlite> UPDATE users
   ...> SET nickname = 'Kimmey'
   ...> WHERE id=1;
sqlite> UP
   ...> UP
   ...> ;
Error: near "UP": syntax error
sqlite> UPDATE users
   ...> SET nickname = 'Chris'
   ...> WHERE id = 2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-24 19:40:20  2014-04-24 19:40:20  Kimmey    
2           Christiane  Kammerl     christiane.kammerl@gm  2014-04-24 19:45:25  2014-04-24 19:45:25  Chris     
sqlite>,</pre> 



## Release 4: Change a value
<!-- paste your terminal output here -->
<pre>sqlite> UPDATE users SET first_name='Kimmy', nickname='Ninja Coder' WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-24 19:40:20  2014-04-24 19:40:20  Ninja Coder
2           Christiane  Kammerl     christiane.kammerl@gm  2014-04-24 19:45:25  2014-04-24 19:45:25  Chris      
sqlite></pre> 

## Release 5: Reflect
<!-- Add your reflection here -->
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
<pre>sqlite> UPDATE users SET first_name='Kimmy', nickname='Ninja Coder', updated_at=DATETIME('now') WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-24 19:40:20  2014-04-24 20:40:58  Ninja Coder
2           Christiane  Kammerl     christiane.kammerl@gm  2014-04-24 19:45:25  2014-04-24 19:45:25  Chris      
sqlite></pre> 

## Release 5: Reflect
<!-- Add your reflection here -->
The turorial you referenced <a href="http://zetcode.com/db/sqlite/">zetcode</a> is great and you can easily look up statements/ functions. Using sqlite in the terminal was something completely new but after a short while I got the feeling for it. It's great to create your own db, to play around with sql key commands and to get used to how they work. I feel confident about SQLite, I understood key components and syntax; however only more exercises will help me memorize it. It felt good though that the research I did was successful. I found the correct answer to my questions in a short time.<br> 
 
Did you learn any new skills or tricks?<br>
ALTER TABLE table_name RENAME TO new_table_name;<br>
ALTER TABLE table_name ADD COLUMN column_name data_type;<br>
=> It is not possible to rename a column, remove a column, or add or remove constraints from a table

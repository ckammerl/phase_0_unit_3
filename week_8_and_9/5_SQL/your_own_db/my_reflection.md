What parts of your strategy worked? What problems did you face?<br>
I was happy that my strategy worked out very well. I looked up a couple of things though and learned
a couple of commands:

Create db:
```
sqlite3 word.db
```
Create table with Foreign KeysL
```
FOREIGN KEY (key_name) REFERENCES (parent_id)
```

Define FOREIGN KEY
=> Define the other fields of the table first with INSERT INTO ..VALUES, then addtional command:
```
UPDATE table_name SET foreign_key_name = id (integer) WHERE field_name (of table) = field_value
```
More info at <a href="https://www.sqlite.org/foreignkeys.html">SQLite.org<a/>

How confident are you with each of the Learning Competencies?<br>confident

Which parts of the challenge did you enjoy?<br>all of it

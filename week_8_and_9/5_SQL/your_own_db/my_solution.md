<!-- ## Show the terminal output here.  -->

Final db
<pre>
sqlite> select * from continents
   ...> ;
id          continent_name
----------  --------------
1           Europe        
2           America       
3           Africa        
4           Asia          
5           Australia     

sqlite> select * from cities;
id          city_name   city_size   country_id  created_at           updated_at         
----------  ----------  ----------  ----------  -------------------  -------------------
1           New York    8.7         1           2014-05-02 05:33:04  2014-05-02 05:33:04
2           London      8.3         4           2014-05-02 05:33:04  2014-05-02 05:33:04
3           Paris       2.2         3           2014-05-02 05:33:04  2014-05-02 05:33:04
4           Sao Paulo   11.3        5           2014-05-02 05:33:04  2014-05-02 05:33:04
5           Berlin      3.5         2           2014-05-02 05:33:04  2014-05-02 05:33:04

sqlite> select * from countries;
id          country_name  continent_id  city_id     created_at           updated_at         
----------  ------------  ------------  ----------  -------------------  -------------------
1           USA           2             1           2014-05-02 05:33:16  2014-05-02 05:33:16
2           Germany       1             5           2014-05-02 05:33:16  2014-05-02 05:33:16
3           France        1             3           2014-05-02 05:33:16  2014-05-02 05:33:16
4           UK            1             2           2014-05-02 05:33:16  2014-05-02 05:33:16
5           Brazil        2             4           2014-05-02 05:33:16  2014-05-02 05:33:16
sqlite> 
</pre>

```

CREATE 3 tables

```
sqlite> CREATE TABLE countries (
   ...>    id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>    country_name TEXT(100) NOT NULL,
   ...>    continent_id INTEGER,
   ...>    city_id INTEGER,
   ...>    created_at DATETIME NOT NULL,
   ...>    updated_at DATETIME NOT NULL,
   ...> 
   ...>    FOREIGN KEY (city_id) REFERENCES cities(id),
   ...>    FOREIGN KEY (continent_id) REFERENCES continents(id)
   ...>    );

sqlite> CREATE TABLE continents (
   ...>    id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>    continent_name TEXT(100) NOT NULL
   ...>    );

sqlite> CREATE TABLE cities (
   ...>    id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>    city_name TEXT(100) NOT NULL,
   ...>    city_size REAL NOT NULL,
   ...>    country_id INTEGER,
   ...>    created_at DATETIME NOT NULL,
   ...>    updated_at DATETIME NOT NULL,
   ...> 
   ...>    FOREIGN KEY (country_id) REFERENCES countries(id)
   ...>    );
```

INSERT field values for all three tables

```
sqlite> INSERT INTO cities
   ...>   (city_name, city_size, created_at, updated_at)
   ...>    VALUES
   ...>   ('New York', 8.7, DATETIME('now'), DATETIME('now')),
   ...>   ('London', 8.3, DATETIME('now'), DATETIME('now')),
   ...>   ('Paris', 2.2, DATETIME('now'), DATETIME('now')),
   ...>   ('Sao Paulo', 11.3, DATETIME('now'), DATETIME('now')),
   ...>   ('Berlin', 3.5, DATETIME('now'), DATETIME('now'));

sqlite> INSERT INTO countries
   ...>    (country_name, created_at, updated_at)
   ...>    VALUES
   ...>    ('USA', DATETIME('now'), DATETIME('now')),
   ...>    ('Germany', DATETIME('now'), DATETIME('now')),
   ...>    ('France', DATETIME('now'), DATETIME('now')),
   ...>    ('UK', DATETIME('now'), DATETIME('now')),
   ...>    ('Brazil', DATETIME('now'), DATETIME('now'));


sqlite> INSERT INTO continents
   ...>    (continent_name)
   ...>    VALUES
   ...>    ('Europe'),
   ...>    ('America'),
   ...>    ('Africa'),
   ...>    ('Asia'),
   ...>    ('Australia');

```

UPDATE FOREIGN KEYS

 ```
sqlite> UPDATE countries SET continent_id = 2 WHERE country_name = 'USA';
sqlite> UPDATE countries SET continent_id = 1 WHERE country_name = 'Germany';
sqlite> UPDATE countries SET continent_id = 1 WHERE country_name = 'France';
sqlite> UPDATE countries SET continent_id = 1 WHERE country_name = 'UK';
sqlite> UPDATE countries SET continent_id = 2 WHERE country_name = 'Brazil';

sqlite> UPDATE countries SET city_id = 1 WHERE country_name = 'USA';
sqlite> UPDATE countries SET city_id = 5 WHERE country_name = 'Germany';
sqlite> UPDATE countries SET city_id = 3 WHERE country_name = 'France';
sqlite> UPDATE countries SET city_id = 2 WHERE country_name = 'UK';
sqlite> UPDATE countries SET city_id = 4 WHERE country_name = 'Brazil';

sqlite> UPDATE cities SET country_id = 1 WHERE id = 1;
sqlite> UPDATE cities SET country_id = 4 WHERE id = 2;
sqlite> UPDATE cities SET country_id = 3 WHERE id = 3;
sqlite> UPDATE cities SET country_id = 5 WHERE id = 4;
sqlite> UPDATE cities SET country_id = 2 WHERE id = 5;

```
# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
tweets
following
follower
favorites
lists

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
Buttom (nav, top right)
text field (sidebar, top left)
retweet (tweet timeline)

Max num char = 140 (incl. external link)
Add image
Add location
Hash tags

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... -->
The relationship between user and its tweets is a one-to-many; each user can have multiple tweets and each tweet will be connected/assigned to the individual user; However when a user is retweeting the exact tweet  of another user, the relation of this tweet is again one-to-many, i.e. one tweet (re-)tweeted by many users. As a results we have a many-to-many relationship: one users has many tweets, and one of these tweets can be on many user accounts.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
DRAFT Version 1
![twitter_schema](https://github.com/ckammerl/phase_0_unit_3/blob/master/week_7/imgs/twitter_schema.jpg?raw=true)

I made a difference how/ when information can be accessed by users: PUBLIC (not logged in) and PRIVATE (logged in)

FINAL Version 2 (used for SQL statements below)

![final](https://github.com/ckammerl/phase_0_unit_3/blob/master/week_7/imgs/final_twitter_schema.jpg?raw=true)

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->


Access your tables and return all the tweets for a certain user id
SELECT tweet_message
FROM Tweets JOIN UserDetails ON (author_id = user_details_id)
WHERE user_details_id = 500;


Access your tables and return the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
SELECT tweet_message
FROM Tweets JOIN UserDetails ON (author_id = user_details_id)
WHERE user_details_id = 2085 AND date_of_tweet BETWEEN '2014-04-16' AND '2014-04-23';

Access your tables and return all the tweets associated with a given user's twitter handle
SELECT tweet_message
FROM Tweets JOIN UserDetails ON (author_id = user_details_id)
WHERE user_name = 'cpMunich';

Access your tables and return the twitter handle associated with a given tweet id
SELECT user_name
FROM UserDetails JOIN Tweets ON (user_details_id = author_id)
WHERE tweet_id = 49;


## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->

It was great to use a real world example/ app like Twitter as basis to develop a schema. As I can see, I developed two versions (schemas) as I wanted to created tables and contents which are accessible under different (public/ private) conditions; However, my second version has no restrictions and I implemented only the case where all data can be accessed. What I learned is how important it is to choose good AND different names for Primary Keys as well as for Foreign Keys. I am not completely sure yet about the data type to choose for each field - for instance what data type for email or lists (they can contain more than one data type.) What I recognized is that it is very easy to overthink a schema.. Starting small and THEN extending/ broading is the way to go.

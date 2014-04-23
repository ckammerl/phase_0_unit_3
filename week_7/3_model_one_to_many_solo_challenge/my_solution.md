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

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
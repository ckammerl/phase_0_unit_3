# U3.W7: Designing Schemas


#### I worked on this challenge [by myself]


## Release 0: Student Roster Schema
<!-- display your image inline here -->
![student_roster](https://github.com/ckammerl/phase_0_unit_3/blob/master/week_7/imgs/student_roster_schema.jpg?raw=true)

## Release 1: One to Many Schema
<!-- display your image inline here -->
![one_many](https://github.com/ckammerl/phase_0_unit_3/blob/master/week_7/imgs/one_to_many.png?raw=true)

## Release 2: One to One Schema
<!-- display your image inline here -->
![one_one](https://github.com/ckammerl/phase_0_unit_3/blob/master/week_7/imgs/one_to_one.jpg?raw=true)

## Release 3: Many to Many Schema
<!-- display your image inline here -->
![many_many](https://github.com/ckammerl/phase_0_unit_3/blob/master/week_7/imgs/many_to_many.png?raw=true)

## Release 4: Design your own Schema
Description of what you're modeling: 

One-to-One relation established between tables: 
'Friends' and 'ContactDetails' as well as 
'FamilyMembers' and 'ContactDetails'; 

=> The contact details could have been added to 'Friends' and 'FamilyMembers' directly.


One-to-Many relation established between tables: 
'Friends' and 'BusinessCircles' and 'PartyCircles' as well as 
'FamilyMembers' and 'FamilyMembers' and 'PartyCircles';

=> The same member of 'Friends' and/or 'FamilyMembers' can be part of more than one circle.


Many-to-Many relation established between tables:
'BusinessCircles' and 'MyCircles' as well as
'PartyCircles' and 'MyCircles';

=> 'MyCircles' can include multiple indidivual circles but also the individual circles can include multiple indivual members.

<!-- display your one-to-one image inline here -->
<!-- display your many-to-many image inline here -->

## Release 5: Reflection

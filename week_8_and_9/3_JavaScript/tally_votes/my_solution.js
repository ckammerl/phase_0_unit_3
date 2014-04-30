// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge [by myself]

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}


// Tally the votes in voteCount.

/*
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. 

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}
*/


// Pseudocode
/*
Write function createVoteCount that takes votes as parameter
Set var result eql to new object whose values are objects itself
  FOR var studentName in votes do
      studentVotes eql votes[studentName]

      FOR var position in studentVotes do
        var votedFor = student[position]
        studentVotes[votedFor] = studentVotes[position] 
          IF result[position] has a key whose value is votedFor do
           within result, increment the num of votes for the key student (votedFor) by one
          ELSE create the key student (votedFor) in result and set it eql to one
          END
      END
  END
  return result
END
  
SET var voteCount eql function createVoteCount(votes)


WRITE a function function that takes voteCount as parameter and set it eql to var createOfficers  
Set var var winner eql to an object with the keys:
  president
  vicePresident
  secretary
  treasurer
  all keys's values are undefined
  FOR var position in voteCount do
   SET var studentsAndVotes eql to the value of the key voteCount[position]
   SET var maxScore eql to 0            
   SET var winnerName eql to undefined  

    FOR var studentName in studentsAndVotes do
     SET var score eql to the value of the key studentsAndVotes[studentName]
      IF (score greater than maxScore) do
          SET maxScore eql score
          SET winnerName eql studentName
      END
    
    SET value of key winner[position] eql to winnerName
  END
  return winner
END

SET var officers eql to function createOfficers(voteCount)

*/



// __________________________________________
// Initial Solution
/*
var createVoteCount = function(votes) {
  var result = {
     president: {},
     vicePresident: {},
     secretary: {},
     treasurer: {}
  }

  for (var studentName in votes) {            //var student is key in votes
    var studentVotes = votes[studentName];    // var studentVotes is value (object)
     for (var position in studentVotes) {
      var votedFor = studentVotes[position]

      if (result[position].hasOwnProperty(votedFor)) {
        result[position][votedFor] = result[position][votedFor] + 1
      } else {
        result[position][votedFor] = 1
      }  
    }
  }
  return result
}


var voteCount = createVoteCount(votes)
console.log(voteCount)


var createOfficers = function(voteCount) {
  var winner = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
  }

  for (var position in voteCount) {
    var studentsAndVotes = voteCount[position]
    var maxScore = 0            
    var winnerName = undefined  

    for (var studentName in studentsAndVotes) {
       var score = studentsAndVotes[studentName]
       
       if (score > maxScore) {
          maxScore = score
          winnerName = studentName
       }
    }
    winner[position] = winnerName
  }
  return winner
}

var officers = createOfficers(voteCount)
console.log(officers)

*/

// __________________________________________
// Refactored Solution

var createVoteCount = function(votes) {
  var result = {
     president: {},
     vicePresident: {},
     secretary: {},
     treasurer: {}
  }

  for (var studentName in votes) {            //var studentName is key in votes
    var studentVotes = votes[studentName];    // var studentVotes is value of votes[studentName] which is an object!
     for (var position in studentVotes) {
      var votedFor = studentVotes[position]


// changed if statement (!) in order to switch logic in if/else statements
      if (!result[position].hasOwnProperty(votedFor)) {  // for instance, if result.president has not yet a key/value pair assigned
        result[position][votedFor] = 1 // then result.president.Bob = 1 or var result = {president: {"Bob": 1}}
      } else {
        result[position][votedFor] = result[position][votedFor] + 1
      }  
    }
  }
  return result
}

var voteCount = createVoteCount(votes)
console.log(voteCount)


var createOfficers = function(voteCount) {
  var winner = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
  }

  for (var position in voteCount) {
    var studentsAndVotes = voteCount[position]
    var maxScore = 0            // var maxScore is visible for all FOLLOWING (LOWER) level, i.e. following for loop and if statement
    var winnerName = undefined  // var winnerNamer is visible for all FOLLOWING (LOWER) level, i.e. following for loop and if statement
                                // because we can look 'up' at higher levels;
                                // but at this level (this for loop) I don't have visibility, i.e. access to any var of lower levels  
                                // because we can't look 'down' at lower the levels

    for (var studentName in studentsAndVotes) {
       var score = studentsAndVotes[studentName]
       
       if (score > maxScore) {
          maxScore = score
          winnerName = studentName
       }
    }
    winner[position] = winnerName
  }
  return winner
}

var officers = createOfficers(voteCount)
console.log(officers)



// __________________________________________
// Reflection
/*
What parts of your strategy worked? What problems did you face?
I found it difficult to write the pseudocode as thinking all functions through without writing them wasn't so easy for me.
I went back to update/ finish the pseudocode after I finlized the initial solution. The tests/ asserts were very helpful for 
developing the right solution.

What questions did you have while coding? What resources did you find to help you answer them?
I needed the resources you suggested to understand the for ..in loop:
http://stackoverflow.com/questions/921789/how-to-loop-through-javascript-object-literal-with-objects-as-members
http://www.sitepoint.com/back-to-basics-javascript-object-syntax/

What concepts are you having trouble with, or did you just figure something out? If so, what?
Did you learn any new skills or tricks?
I feel more and more confident in using for / for..in loops in JS. It still takes some time to develop the functions
and to write the pseudocode. This challenge helped me to look deeper at the scope of variables in order to use for loops 
correctly (or better make them successfully work)

How confident are you with each of the Learning Competencies?
Define local variables in JavaScript confident
Define functions in JavaScript confident, but for loops needs further practice 
Create, add properties to, delete properties from, and access values in object literals - getting there


*/


// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.


var average = function(arr_of_num) {
  var sum = 0
  for (var i = 0; i < arr_of_num.length; i++) {
    sum = sum + arr_of_num[i];
  }
  return sum / arr_of_num.length;
};


var update_student_score = function(student, new_score) {
  for (var i = 0; i < students.length; i++) {
    if (student === students[i]) {
      scores[i].push(new_score);
      break;
    }
  }
};

var average_of_student = function(student) {
  for (var i = 0; i < students.length; i++) {
    if (student === students[i]) {
      return average(scores[i]);
    }
  }
}


var create_gradebook = function(arr_students, arr_scores) {
  var book = {}
  for (var i = 0; i < arr_students.length; i++) {
    book[arr_students[i]] = {testScores: arr_scores[i]}
  }
  book.addScore = update_student_score;
  book.getAverage = average_of_student;
  return book;
};


var gradebook = create_gradebook(students, scores);





// __________________________________________
// Refactored Solution

var average = function(arr_num) {  /*changed var name*/
  var sum = 0
  for (var i = 0; i < arr_num.length; i++) {
    sum = sum + arr_num[i];
  }
  return sum / arr_num.length;
};


var update_student_score = function(student, new_score) {
  for (var i = 0; i < students.length; i++) {
    if (student === students[i]) {
      scores[i].push(new_score);
      break;
    }
  }
};

var average_of_student = function(student) {
  for (var i = 0; i < students.length; i++) {
    if (student === students[i]) {
      return average(scores[i]);
    }
  }
}


var create_gradebook = function(arr_students, arr_scores) {
  var book = {}
  for (var i = 0; i < arr_students.length; i++) {
    book[arr_students[i]] = {testScores: arr_scores[i]}
  }
  book.addScore = update_student_score;
  book.getAverage = average_of_student;
  return book;
};


var gradebook = create_gradebook(students, scores);



/* the initial solution is DRY and I didn't refactore the solution furher*/



// __________________________________________
// Reflect
/*
What parts of your strategy worked? What problems did you face?
I had to review the the tutorial at http://www.sitepoint.com/back-to-basics-javascript-object-syntax/ to remind myself of the
syntax. Using the for loop went pretty well and I came up with the right solution right away. Creating the function create_gradebook took
me the longest; I frist wrote the var gradebook directly and integrated the for loop and the function calls in it. But that
didn't work and I came up with a solution that used another function to build/ create the gradebook.

How confident are you with each of the Learning Competencies?
Define local variables in JavaScript - confident
Define functions in JavaScript - confident
Create, add properties to, delete properties from, and access values in object literals - confident, but I need to do more exercises.

Which parts of the challenge did you enjoy? all of it

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
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)
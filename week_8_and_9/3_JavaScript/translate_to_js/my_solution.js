// U3.W8-9: Challenge you're converting


// I worked on this challenge [by myself].

// A. FIRST EXERCISE (w8 Ruby reverse_word)

// 2. Pseudocode
/* WRITE a function reverse_word 
the function takes a string as parameter
set a var reverseString eql to empty String
the function reverses each word in string (word, sentence) by:
  set var reversed eql to 
and returns one sentence with all its words reversed

*/
// 3. Initial Solution

var reverse_word = function(arg) {
  var reversedString = '';
  for (var i = arg.length - 1; i >= 0; i--) {  // calling method lenght on string; i starts being the last char in given arg;
  	reversedString += arg[i];
  }
  return reversedString;
}


// 4. Refactored Solution
//coudn't think of a shorter, DRYer solution.


// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

console.log(reverse_word("Hi my name is Christiane") === "enaitsirhC si eman ym iH");
console.log(reverse_word("Christiane") === "enaitsirhC");



// B. SECOND EXERCISE (w8 Ruby FizzBuzz)

// 2. Pseudocode
/*
WRITE a function super_fizzbuzz that takes an arr as argument
SET a var result eql to empty array
Iterate through the array with a for loop 
FOR var i < arr.length; i = 0; i++ do
  IF element % 15 eql 0 do
     result[i] = "FizzBuzz" (instead of element)
  IF ElSE element % 5 eql 0
  	 result[i] = "Buzz" (instead of element)
  IF ELSE element % 3 eql 0
  	 result[i] = "Fizz" (instead of element)
  ELSE result[i] = element
return result
*/

// 3. Initial Solution
var super_fizzbuzz = function(arr_num) {
	var result = [];
	for (var i = 0; i < arr_num.length; i++) {
		if (arr_num[i] % 15 === 0) {
			result[i] = "FizzBuzz"; 
		} else if (arr_num[i] % 5 === 0) {
			result[i] = "Buzz";
		} else if (arr_num[i] % 3 === 0) {
			result[i] = "Fizz";
		} else {
			result[i] = arr_num[i];
		}
	}
	return result;
}

console.log(super_fizzbuzz([3, 5, 15, 8, 7, 9, 10, 30]));



// 5. Reflection 
/*
What parts of your strategy worked? What problems did you face?
I had to look up how to reverse a string in JS; I learned that Strings are immutable in JS, so every modified version of a string
I create is an object itself; therefore reversing a string should use an empty string which is build within a function.

What questions did you have while coding? What resources did you find to help you answer them?
I found this great overvie:
http://eddmann.com/posts/ten-ways-to-reverse-a-string-in-javascript/

Did you learn any new skills or tricks?
I found it very helpful to translate two Ruby methods into JS functions to clearly see the differences in syntax and logic; 
This challenge helped me better understand how to work with strings and arrays and also modulo in JS. Also, using a for loop to reverse a string
by counting down (iterator i goes not up but down with i--) whas a great exercise.

How confident are you with each of the Learning Competencies? confident, but more translations into JS will broaden my knowledge of 
JS further and really get a feeling for its syntax and logic.

Which parts of the challenge did you enjoy? all of it

*/
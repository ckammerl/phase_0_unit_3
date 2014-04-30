# U3.W8-9: 


# I worked on this challenge [with Clark Hinchcliff].

# 2. Pseudocode
=begin
WRITE a method super_fizzbuzz that takes an arr as argument
SET a var result = []
Iterate through the array and look at each element 
  IF element % 15 eql 0 
  push the string FizzBuzz instead of the element into result
  IF ElSE element % 5 eql 0
  push the string Buzz instead of element into result
  IF ELSE element % 3 eql 0
  push the string Fizz instead of element into result
  ELSE return the element
return result

=end


# 3. Initial Solution
=begin
def super_fizzbuzz(array)
  result = []
  array.each do |num|
    if num % 15 == 0
      result.push("FizzBuzz")
    elsif num % 5 == 0
      result.push("Buzz")
    elsif num % 3 == 0
      result.push("Fizz")
    else
      result.push(num)
    end
  end
  return result
end
=end



# 4. Refactored Solution

def super_fizzbuzz(array)
  result = array.map do |num|
    if num % 15 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else
      num = num
    end
  end
  return result
end

my_arr = [3, 5, 15, 8, 7, 9, 10, 30]
p super_fizzbuzz(my_arr)

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
#my_arr = [3, 5, 15, 8, 7, 9, 10, 30]

def assert
  raise "Assertion Failed" unless yield
end

assert {super_fizzbuzz(my_arr) == ["Fizz", "Buzz", "FizzBuzz", 8, 7, "Fizz", "Buzz", "FizzBuzz"] }



# 5. Reflection 
=begin
It was fun doing this challenge in a pairing session. I felt very comfortable 
and confident with the Learning Competencies. I felt great because #map and modulo 
came right to my mind and I knew how and when to use them.
=end
	


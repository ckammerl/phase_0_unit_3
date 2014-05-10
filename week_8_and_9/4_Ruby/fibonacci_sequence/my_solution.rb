# U3.W8-9: 


# I worked on this challenge [with: Shawn].

# 2. Pseudocode
=begin
DEFINE method called is_fibonacci? which takes one numerical argument
The method checks the argument against Fibonacci numbers 
  IF num is part of the sequence, it returns true 
  ELSE false
END
=end


# 3. Initial Solution

def is_fibonacci?(num)
  fibonacci = [0,1]
  
  return true if num <= 1
  
  while num > fibonacci.last
    x, y = fibonacci.pop(2) # defining a value for x and y
    fibonacci.push(y, x + y)
  end
  
  if num == fibonacci.last 
  	true
  else
  	false
  end
end
  
puts is_fibonacci?(8)
puts is_fibonacci?(11)

# 4. Refactored Solution

def is_fibonacci?(num)
  result = false # setting result eql false
  fibonacci = [0,1]
  
  result = true if num <= 1 #using one-line if statement
  
  while num > fibonacci.last
    x, y = fibonacci.pop(2) # defining a value for x and y
    fibonacci << y << (x + y) #using "shovel" << but it pushes (appends) only ONE object at a time
  end
  
  result = true if num == fibonacci.last 
  
  return result
end



# 1. DRIVER TESTS GO BELOW THIS LINE

def assert 
  raise "Assertion Failed" unless yield
end

fib = [0,1,1,2,3,5,8,13,21,34]
fib2 = [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample

assert { fib.include?(8) == is_fibonacci?(8) }

assert { is_fibonacci?(fib2) == true } 




# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I wrote a blog post this week about recursion and was familiar with the fibonacci sequence. However, in that 
research, I focused on finding a fibonacci number and not checking if a num is part of the sequence. It
took us a while and we did some research together before we came up with the solution above.

Did you learn any new skills or tricks?
x, y = fibonacci.pop(2)
Setting two variables eql to a value using a comma; furthermore being aware that as we set two (multiple)
values eql to different values, we use an array to store them; we also looked up #pop(num) one more
time to confirm what it returns: an array.
- Array #pop() ==> http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-pop

fibonacci << y << (x + y)
the "shovel" only pushes (appends) ONE given object at a time but you can chain it; it returns the appended array
- Array << ==> http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-3C-3C

How confident are you with each of the Learning Competencies? confident however we didn't find it
easy to write the correct solution right away and needed some research.
	
=end
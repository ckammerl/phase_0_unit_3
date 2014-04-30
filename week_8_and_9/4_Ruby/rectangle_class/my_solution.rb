# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
WRITE a class Rectangle
new instances of Rectangle will be initialized with width and height (integer)
use the method attr_accessor on width and height to make them readable and writable
WRITE #initalize and set @width eql to width and @height eql to height

WRITE #area 
it calculates the area of a rectangle or a square by
multiplying the instance var @width with @height

WRITE #perimeter
it calculates the perimeter of a rectangle or a square 
write a variable sum and set it equal to the result of adding @width multiplied 2 to @height multiplied by 2
return sum

WRITE #diagonal
it calculates the diagonal of  a rectangle or a square 
use pythagoras and set a variable pyth eql to the sum of square of @width and square of @height
set a variable result eql to calling Math.sqrt on pyth
return result

WRITE #square?
checks if @width eql @height
IF yes, return true
Else return false


=end 
# 3. Initial Solution
=begin
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
  	sum = (@width * 2) + (@height * 2)
  	return sum
  end

  def diagonal 
  	pyth = (@width * @width) + (@height * @height)
  	result = Math.sqrt(pyth)
  	return result
  end 

  def square?
  	if @width == @height
  		return true
  	else
  		return false
  	end 
  end

  def ==(other) 
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end

=end 


# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
    (@width * 2) + (@height * 2) # deleted var and no return
  end

  def diagonal 
  	pyth = (@width * @width) + (@height * @height)
  	result = Math.sqrt(pyth)
  	return result
  end 

  def square?
  	if @width == @height
  		return true
  	else
  		return false
  	end 
  end

  def ==(other) # performs the logic of the comparison operator ==; returns boolean; 
  				# other is other instance of Rectangle
  				# compairs instances through @width and @height
    (other.width  == self.width && other.height == self.height ) || 
    (other.height == self.width && other.width  == self.height )
    #=> works because we defined:
   		#attr_accessor :width, :height
   	    #and therefore we can call #width and #height on instances
  end
end

testing = Rectangle.new(20, 40)
p testing.area
p testing.perimeter
p testing.diagonal
p testing.square?
p testing.width
p testing.height

testing2 = Rectangle.new(40, 20)
p testing == testing2


# 1. DRIVER TESTS GO BELOW THIS LINE
def assert 
	raise "Assertion failed" unless yield
end

test = Rectangle.new(10,20)
test2 = Rectangle.new(20,20)

assert { test.class == Rectangle }
assert { test2.class == Rectangle }

assert { test.area ==  200 }
assert { test2.area == 400 }

assert { test.perimeter == 60 }
assert { test2.perimeter == 80 }

assert { test.diagonal.class == Float }

assert { test.square? != true }
assert { test2.square? == true }


# 5. Reflection 
=begin
What parts of your strategy worked? 
It worked out very well and the solution I developed in the pseudocode worked right away.
It was good write an assert method and assert statements, just a good exercise and reminder.
What I like about the challenge is that the solution now gives a good overview of a 
Math logic.


What questions did you have while coding? What resources did you find to help you answer them?
I looked up Math.sqrt() to get the square root

- Module Math.sqrt() => returns Float  http://www.ruby-doc.org/core-2.1.1/Math.html

I also looked up what the method def ==(other) is doing and how to use it. Added a couple of comments.
Found a good article here: http://andreacfm.com/2011/07/27/make-your-ruby-classes-comparable-and-enumerable/

def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

=> performs the logic of the comparison operator ==; 
=> returns boolean; 
=> other is other instance of Rectangle

=> compairs instances through @width and @height
=> works because we defined:
   attr_accessor :width, :height
   and therefore we can call #width and #height on instances
 

Did you learn any new skills or tricks?
definitly, Math.sqrt() and writing a method that allows me to compare instance of a class
How confident are you with each of the Learning Competencies? confident
Which parts of the challenge did you enjoy? yes, it was a great exercise

=end
# U3.W8-9: What the Scope


# I worked on this challenge with Clark Hinchcliff.

# 1. What are the problems in the error messages?
#see reflections


# 2. Original Code
=begin
$var_1 = 22
 
class Person
  @@var_2
  VAR_6 = "Ruby"
 
  attr_reader :var_3, :var_4
 
  def initialize(var_5 = VAR_6)
    @var_3="Law of Demeter"  
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end
=end 


# 3. Modified Code (with scope identified as comments)

=begin
$var_1 = 22 # global variable which accessible by all methods inside and outside of the class (accessible from anywhere in the Ruby program, regardless of where they are declared)
 
class Person
 # @@var_2 # class variable, is the same for all instances of the class
 #VAR_6 = "Ruby" #constant
 
  attr_reader :var_3, :var_4 # creading two readable instance methods that return @var_3 and @var_4
 
  def initialize(var_5 = "Ruby") #argument eql to constant 
    @var_3="Law of Demeter"  #instance variables are accessible by all methods of the class but are unique to each instance
    #@var_6 = "Ruby" #another instance variable
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8| #local variable, only accessible in the method that defines them
      var_9 += var_8 + 2 #local variable var_9
    end
  end
end
=end


# New / updated solution
=begin

$num_to_add = 22 # global variable
 
class ProgrammingLanguages
 # @@var_2 # class variable, is unused in class an unnecessary
 #VAR_6 = "Ruby" #constant
 
  attr_reader :name, :rule # creading two readable instance methods
 
  def initialize(name) #argument eql to constant 
    @name = name
    @rule = "Law of Demeter"  #instance variable @var_3 set eql to string
  end
 
  def add_twenty_two(arr = [1,2,3])
    result = 0
    arr.each do |num| #local variable var_7
      result += num + $num_to_add #local variable var_9
    end
    return result
  end
end
=end


# Refactored solution

$num_to_add = 22 # changed the global variable's name
 
class ProgrammingLanguages #changed the classes name

  attr_reader :name, :rule # creading two readable instance methods
 
  def initialize(name) #initializing new instances with one argument
    @name = name #setting instance variable @name equal to name argument, which will be a string
    @rule = "Law of Demeter"  #instance variable @rule set eql to string
  end
 
  def add_twenty_two(arr = [1,2,3]) #edit method and argument name; instances of ProgrammingLanguages can now modify an array
    result = 0 #new result variable set equal to 0
    arr.each do |num| #iterating through an argument array; edited placeholder name
      result += num + $num_to_add #accessing global var num_to_add as value to add to each array element
    end
    return result #returning total with 22 per array element added
  end
end

puts language = ProgrammingLanguages.new("Ruby")
puts language.add_twenty_two
puts language.add_twenty_two([5, 6, 7, 8])
puts language.name
puts language.rule


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assertion failed" unless yield
end

assert { language.add_twenty_two == 72 }
assert { language.class == ProgrammingLanguages }
assert { language.add_twenty_two([5, 6, 7, 8]) == 114 }
assert { language.name == "Ruby" } 


# 5. Reflection 
=begin
It was great to work on this in a pairing session. Going through the code line by line and identifying
the different scopes of variables worked out well. Due to the given var names in the original solution, it wasn't
clear at all what the class should actually achieve. So we discussed the purpose of the class and then came up
with our refactored solution. We renamed variables, and also instance method names to make it clear what they are and what 
they do. We changed the class name to ProgrammingLanguages as we thought that an instance variable eql to "Law of Demeter"
means that instances of the class "know" this rule, it is part of their state. One instance of the class could be
Ruby, therefore we created an instance with language = ProgrammingLanguages.new("Ruby").
The instance language has the method add_twenty_two, which means that an instance of ProgrammingLanguages can
work with an array and add 22 to each element. This is actually not following best practices and our solution is not
perfect in that sense, because: why should an instance of ProgrammingLanguages have such a method? But the code
is clean, readable and DRY.

What questions did you have while coding? What resources did you find to help you answer them?
We looked up the definition of 
-CONSTANTS == http://rubylearning.com/satishtalim/ruby_constants.html
=> constant is like a variable, except that its value is supposed to remain constant for the duration of the program.

-the scope of 'class variables' == http://www.techotopia.com/index.php/Ruby_Variable_Scope
=> class variables are shared between all instances of a class; they have the SAME value for each instance of 
the class: i.e. if one object instance changes the value of the variable, that new value will essentially change for all other object instances.

How confident are you with each of the Learning Competencies? confident

=end

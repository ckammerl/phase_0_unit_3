# U3.W8-9: Reverse Words


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
WRITE a method reverse_words which takes a string as argument
set the var arr_words eql to the result of calling the method split() on the given string to get an array with all elements/ words as single words
set a var arr_words_reverse eql to the result of iterating through arr_words with using map and call the method reverse on each element
set a var result eql to calling join('') on arr_words_reverse
return result
=end

# 3. Initial Solution
=begin
def reverse_words(arg)
	arr_words = arg.split()
	arr_words_reverse = arr_words.map {|word| word.reverse }
	result = arr_words_reverse.join(' ')
	return result
end

a = "Hi my name is Christiane"
b = ""
c = "Peter"
=end

# 4. Refactored Solution

def reverse_words(arg)
	arr_words = arg.split()
	result = arr_words.map {|word| word.reverse }.join(' ') # no need of var arr_words
	return result
end

a = "Hi my name is Christiane"
b = ""
c = "Peter"

p reverse_words(a)
p reverse_words(b)
p reverse_words(c)



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
	raise "Assertion failed" unless yield
end

test = "Hi my name is Christiane"
test2 = ""
test3 = "Peter"


assert { reverse_words(test) == "iH ym eman si enaitsirhC" }
assert { reverse_words(test2) == "" }
assert { reverse_words(test3) == "reteP" }



# 5. Reflection 
=begin
Another great exercise and recapitulation of a couple of String methods. I had #split(), #map and #join
right in front of my inner eye as I read the instructions. I really feels good to see
that I have a couple of build-in methods and how to use them well memorized.
=end

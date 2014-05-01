# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself].

# 2. Pseudocode
=begin
WRITE a method create_database
	SET a var data_base eql to an empty hash 
	=> the keys in the hash should be the number in the range of 1 to 100 (including)
	=> the corresponding values should be the same numbers in english words (like one, three)

	SET var nums eql to range (1..100).to_a.
	SET a var num_words eql to an arr of arr
	=> the first subarray holds the strings:
	["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen"]
	=> the second subarray holds
	[" teen"]
	=> third 
	["twenty"]
	and so forth:
	["thirty"]
	["fourty"]
	["fivty"]
	["sixty"]
	["seventy"]
	["eighty"]
	["ninety"]
	["hundred"]

	Iterate through nums and num_words using multiple for loops to define 
	each element in num as key in the hash data_base with a value of the corresponding "word" of num_words

	Return the hash data_base

WRITE the method in_words()
	=> it should check whether the given argument (integer) is a key in the hash data_base 
  		IF yes, then return its value 
  		Else "message: number is out of range"
  		END

=end 
# 3. Initial Solution
=begin
def create_database
data_base = {}
nums = (1..100).to_a
num_words = [["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen"],
			 ["teen"],
			 ["twenty "],
			 ["thirty "],
			 ["fourty "],
			 ["fivty "],
			 ["sixty "],
			 ["seventy "],
			 ["eighty "],
			 ["ninety "],
			 [" hundred "]]

  j = 0
  i = 0
  for v in (0...13)
    data_base[nums[j]] = num_words[0][i]
    j += 1
    i += 1
  end

  x = 3
  for v in (14...20)
    data_base[nums[j]] = num_words[0][x] + num_words[1][0]
    j += 1
    x += 1
  end

  data_base[nums[j]] = num_words[2][0]
  j += 1

  y = 0
  for v in (21...30)
    data_base[nums[j]] = num_words[2][0] + num_words[0][y]
    j += 1
    y += 1
  end

  data_base[nums[j]] = num_words[3][0]
  j += 1

  z = 0
  for v in (31...40)
    data_base[nums[j]] = num_words[3][0] + num_words[0][z]
    j += 1
    z += 1
  end

  data_base[nums[j]] = num_words[4][0]
  j += 1

  w = 0
  for v in (41...50)
  	data_base[nums[j]] = num_words[4][0] + num_words[0][w]
 	j += 1
    w += 1
  end

  data_base[nums[j]] = num_words[5][0]
  j += 1

  a = 0
  for v in (51...60)
  	data_base[nums[j]] = num_words[5][0] + num_words[0][a]
 	j += 1
    a += 1
  end

  data_base[nums[j]] = num_words[6][0]
  j += 1

  b = 0
  for v in (61...70)
  	data_base[nums[j]] = num_words[6][0] + num_words[0][b]
 	j += 1
    b += 1
  end

  data_base[nums[j]] = num_words[7][0]
  j += 1

  c = 0
  for v in (71...80)
  	data_base[nums[j]] = num_words[7][0] + num_words[0][c]
 	j += 1
    c += 1
  end


  data_base[nums[j]] = num_words[8][0]
  j += 1

  d = 0
  for v in (81...90)
  	data_base[nums[j]] = num_words[8][0] + num_words[0][d]
 	j += 1
    d += 1
  end


  data_base[nums[j]] = num_words[9][0]
  j += 1

  e = 0
  for v in (91...100)
  	data_base[nums[j]] = num_words[9][0] + num_words[0][e]
 	j += 1
    e += 1
  end


   data_base[nums[j]] = num_words[0][0] + num_words[10][0]

  return data_base
end


def in_words(num)
	if create_database.has_key?(num)
		return create_database[num]
	else
		puts "Number is out of range (1 to 100)"
	end
end 

=end
# 4. Refactored Solution

def in_words(num)
  num_words_1_19 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen","fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  num_words_20_90 = ["twenty ", "thirty ", "fourty ", "fivty ", "sixty ", "seventy ", "eighty ", "ninety ","hundred "]

  ten = num / 10 
  unit = num % 10


    if num > 0 && num < 20
      result = num_words_1_19[num]
    elsif num > 20 && num <= 100
      result = num_words_20_90[ten - 2] + num_words_1_19[unit]
    else 
      "Number is out of range (1 to 100)"
    end 
  return result
end 


p in_words(5)
p in_words(56)
p in_words(11)
p in_words(80)
p in_words(100)


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert 
	raise "Assertion failed" unless yield
end

assert { in_words(1) == "one" }
assert { in_words(2) == "two" }
assert { in_words(7) == "seven" }
assert { in_words(11) == "eleven" }
assert { in_words(19) == "nineteen" }
assert { in_words(26) == "twenty six" }
assert { in_words(80) == "eighty " }
assert { in_words(100) == "hundred " }


# 5. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
I think it's obvious, my first solution wasn't the best one :) But it was a good exercise for me as I used severeal for loops
and really understood the scope of different variables. I enjoyed developing it. The refactored, or better the second solution is much
shorter, DRY and does the same job.

Did you learn any new skills or tricks?
I used this challenge to improve my skills in using for loops as well as modulo.

How confident are you with each of the Learning Competencies? confident
Which parts of the challenge did you enjoy? all of it

=end
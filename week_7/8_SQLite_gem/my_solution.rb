# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [with Shawn Seibert]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  arg = minimum_years
    if arg.class == Integer #added if statement to check and validate input to avoid SQL injection
    reps_years = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > ?", "#{arg}") #using placehoder for the query
    reps_years.each { |rep_year| puts rep_year[0] + " - " + rep_year[1].to_s }
  end 
end

def print_lowest_grade_level_speakers
   puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
   grade_level = $db.execute("SELECT grade_current FROM congress_members WHERE grade_current < 8")
   puts grade_level
end

def print_state_reps(*states)
  puts "REPRESENTATIVES by SELECT STATE"
  states.each do |state| #iterating through given list of arguments (*states)
  	if state.length == 2 #checking/ validating length of input to avoid SQL injection
  	reps = $db.execute("SELECT name FROM congress_members WHERE location = ?", "#{state}") #using placeholder 
    reps.each { |rep| puts rep[0] + " - " + state }
    end
  end
end 

def print_politicians_votes
  puts "REPRESENTATIVES AND VOTES"
  politicians = $db.execute("SELECT name, COUNT(voter_id) FROM congress_members JOIN votes ON (congress_members.id = votes.politician_id) GROUP BY 1 ORDER BY 2 DESC") # 1 eql name, 2 eql COUNT(voter_id)
  politicians.each {|rep| puts rep[0] + " - " + rep[1].to_s + " votes" }
end 



def print_politicians_with_voters
  puts "REPRESENTATIVE AND VOTERS"
  reps = $db.execute("SELECT congress_members.name, congress_members.id FROM congress_members")

  reps.each do |rep| 
    voters = $db.execute("SELECT voters.first_name, voters.last_name FROM voters, votes WHERE voters.id = votes.voter_id AND votes.politician_id = #{rep[1]} ORDER BY last_name") #added ORDER BY
    rep_name = "\n" + rep[0] + ": "  
    voters.each { |voter| rep_name += "\n" + voter[0] + " " + voter[1] + ", " }
    puts rep_name
  end 
end


def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers 
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator
print_state_reps('NJ', 'NY', 'MI', 'FL', 'AL')
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)

print_separator
print_politicians_votes

print_separator
print_politicians_with_voters
##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

p
# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# => it's holidng the global variable db to allow all methods access to the db


# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works. 
# => the method #execute executes the given SQL statement; it is used to do a single query, therefore it only executes the first statement in the string, ignoring all subsequent statements
#    the method execute_batch is used to execute multiple SQL statements

# => More info:
#http://sqlite-ruby.rubyforge.org/classes/SQLite/Database.html#M000078
#http://ruby.bastardsbook.com/chapters/sql/


# Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  

# => Use the method #execute on the global variable 'database' to execute the following SQL query:
#    Select the name from the table 'congress_members', but only those names where the column 'years_in_congress' of the table 'congress_members'
#    holds a value (number) that is greatet than a number defined in the variable 'minimum_years'. You can interpolate the var 'minimum_year' to use it
#    in your SQL statement. 
#    The value of the var minimum_years will be given as user input (argument).

# If you're having trouble, find someone to pair on this explanation with you.
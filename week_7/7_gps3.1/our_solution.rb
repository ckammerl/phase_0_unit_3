# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Christiane
# 2. Emmanuel
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add something to my list
# As a user, I want to count total items on list
# As a user, I want to delete items from the list
# As a user, I want to check off items
# As a user, I want to get an overview of all items on the list
 
# Pseudocode
# verbs: add, count, delete, check_off, display => functionality/ methods
# nouns: list => instance(s)
# 
# start with one class List, maybe refactor into smaller classes later?
 
 
# Your fabulous code goes here....
=begin
class GroceryList
  def initialize
    @items_list = []
  end 
  
  def add(*item)
    item.each { |elem| @items_list << elem }
  end 
  
  def display
    @item_list.each {|item| puts item }
  end
  
  def count
   puts @item_list.length 
  end
  
  def check_off(item)
    @item_list.each do |elem| 
      if elem == item
        elem.prepend('x ')
      end 
      puts "Your updated grocery list: " 
      display
  end 
  
  def delete_item(item)
    @item_list.delete(item)
  end  
end 

=end



#Refactored solution

#DRAFT 

module ShowItems #added module
  def display(*item)
    puts item.each {|item| puts item }
  end
end 


class GroceryList 
include ShowItems #seperated #display into module ShowItem

  def initialize
    @items_list = []
  end 
  
  def add_item(*item) #changed method name
    item.each { |elem| @items_list << elem }
  end 
  
  def count_items #changed method name
   puts @items_list.length 
  end
  
  def check_off_item(item) #changed method name
    @items_list.each do |elem| 
      if elem == item
        elem.prepend('x ')
      end 
    end
      puts "Your updated grocery list: " 
      display(@items_list)
    return @items_list
  end 
  
  def delete_item(item)
    @items_list.delete(item)
    puts "Your updated grocery list: " 
    display(@items_list) #added display after deletion
    return @items_list
  end  
end 



# DRIVER CODE GOES HERE. 

list = GroceryList.new
list.add_item('Raisin Bran', 'Carrot', 'Beets')
list.count_items
list.check_off_item('Raisin Bran')
list.delete_item('Raisin Bran')

list.display(list)

#Reflection
=begin
What questions did you have while coding? What resources did you find to help you answer them?
We looked up STRING #prepend("string") and found it the best build-in method to implement #check_off


Did you learn any new skills or tricks?

- STRING #prepend("string") 
- separating unrelated functions/ methods; Emmanuel highlighted that #display is actually not a method that an instance of a class List 
should include; After our team session, I thought about adding a second class that will include a method #display; but this second 
class didn't have to create new instances, therefore I went back to read about modules and came up with the refactored solution.


How confident are you with each of the Learning Competencies? confident; but I'd like to practice writing classes/modules
more and continue learning by doing/ writing various versions of code.


Which parts of the challenge did you enjoy?
this was the first GPS session in which I teamed up with an instructur and I very much enjoyed it. 
=end
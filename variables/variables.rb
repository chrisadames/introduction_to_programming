# VARIABLES

first_name = 'Joe' # => "Joe"

# don't confuse the '=' with '=='

a = 4
b = a
a = 7
puts b # 4, value remains, variables point to values in memory, not deeply linked to each other

puts 'What is your first name?'
name = gets.chomp # Chris
puts name + ' is super great!' # Chris is super great!

# SCOPE
# variables scope determines where in a program a variable is available for use, defined by a 'block'
# 'block' is a piece of code following a method invocation, {} or do/end * not all do/end imply a block
# rule: inner scope can access variables initialized in an outer scope but not vice versa.

a = 5

3.times do |n|
  a = 3
end

puts a # value is 3 because 'a' is available to the inner scope created by 3.times do...end

a = 5

3.times do |n| # method invocation with a block
  a = 3
  b = 5 # 'b' is initialized in the inner scope
end

puts a
puts b # error given because 'b' isnt available outside of the method invocation with a block where
        # it is initialized. When we call 'puts b' it isnt available within the outer scope.

# * NOTE: the key factor for deciding if the code delimited by {} or do/end is a block (thereby creating a new
# scope for variables), is seeing if the {} immediately follows a method invocation, example:
arr = [1, 2, 3]

for i in arr do
  a = 5 # 'a' is initialized here
end

puts a # 'a' is accessible because the {} code did not create a new inner scope, since 'for' is part of
        # Ruby language and not a method invocation. When we use 'each', 'times' and other method invocations
        # followed by {}, that's when a new block is created.

# 5 TYPES OF VARIABLES

#   1. Constants: declared by capitalizing every letter, used for storing data that never needs to change
#              don't used constants.
MY_CONSTANT = 'I am available throughout your app.'

#   2. Global: declared by starting with '$', these are available throughout entire app, overriding all 
#           scope boundaries. Stay away from this.
$var = 'I am also available throughout your app.'

#   3. Class: declared by starting with 2 @'s '@@', accessible by instances of my class, as well as the class itself.
#          When I need to declare a variable that is related to a class, but each instance of that class doesnt
#          need its own value for this variable. Mustbe initilized at the class level, outside of any method
#          definitions. They can then be altered using class or instance method definitions.
@@instances = 0 # class variable declaration

#   4. Instance: declared with 1 '@' and available throughout the current instance of the parent class. Can
#                cross some scope boundaries, but not all of them.
@var = 'I am available throughout the current instance of this class'


#   5. Local: Most common variables and obey all scope boundaries and are declared by starting the name
#             with neither '$' nor '@', not capitalizing the entire variable name.
var = 'I must be passed around to cross scope boundaries.'

# EXCERCISES

# 1. Write a program called 'name.rb' that asks the user to type in their name and then prints out a greeting
# message with their name included.

# 2. Write a program called 'age.rb' that asks a user how old they are and then tells them how old they will be in 
# 10, 20, 30 & 40 years.

# 3. Add another section onto name.rb that prints the name of the user 10 times. 

# 4. Modify 'name.rb' again so that it first asks the user for their first name, saves it into a variable, then
# does the same for the last name. Then outputs their full name all at once.

# 5. Look at the following programs:
x = 0
3.times do
  x += 1
end
puts x

# and...
y = 0
3.times do
  y += 1
  x = y
end
puts x
# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?


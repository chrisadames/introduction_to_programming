# practice_each.rb


names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }

# We have called the 'each' method using the dot operator ( . ) on our array. This method loops through each element in our array, in order,
# starting from 'Bob'. Then it begins executing the code within the block. The clocks starting and ending points are defined by {}.
# Each time we iterate over the array, we need to assign the value of the element to a variable. Here, we named the variable 'name'
# and placed it in between two pipes ( | ). After that, I write the logic that I want to use to operate on the variable, which 
# represents the current array element.

# Adding functionality to try out do/end vs {}

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# I've added the counter 'x' to add a number before each name, creating a number list output. The number 'x' is incremented everytime 
# I go through the iteration.

# ARRAY

# is an ordered list of elements that can be of any type. I define an array by placing a list of elements 
# between brackets like [1, "two", 3.5]. Array's can have any combination of strings, integers, floats and even other arrays!

array = [1, 'Bob', 4.33, 'another string']

# to find the first element of the array, i can use 'array.first' and for the last element 'array.last'
# arrays are 'indexed' lists and means that each slot in an array is numbered, beginning with 0. I can reference any element by its 
# indexed number. To do this, I type the array name with the index in brackets [] directly following:
array[3] # => 'another string'


# Modifying Arrays

# POP (method)
# permanently(mutates the caller) take the last item off an array: array.pop
# * when the element was popped, the popped element was returned. Remember the returned value of array.pop returns => 'another string' 
# and permanently removes it from the array.

# PUSH (method)
# to permanently(mutate the caller) add an element to an array:   array.push("another string") => [1, 'Bob', 4.33, 'another string']
# another way is by using the shovel operator '<<':               array << "another string" => [1, 'Bob', 4.33, 'another string']


# MAP (method)
# iterates over an array applying a lock to each element of the array and returns a new array with those results.
# 'collect' and 'map' do the same thing:
a = [1, 2, 3, 4]
a.map { |num| num**2 } => [1, 4, 9, 16]
a.collect { |num| num**2 } => [1, 4, 9, 16]
# a = [1, 2, 3, 4] the array doesn't change, map/collect arent destructive, they dont mutate the caller.

# MUTATE CALLER: I must memorize which methods do/don't mutate the caller.

# DELETE_AT (method) can eliminiate the value at a certain index from an array. Its destructive and permanently changes the array.
a.delete_at(1) # => 2
# a = [1, 3, 4]

# DELETE (method)
# if i know the value but not the index within the array. It's permanently deleted from the array:
my_pets = ["cat", "dog", "bird", "cat", "snake"]
my_pets.delete("cat")
# my_pets = ["dog", "bird", "snake"]


# UNIQ (method)
# does not mutate the caller. This iterates through an array, deletes any duplicate values that exist, then returns the result as a new array.
b = [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq # => [1, 2, 3, 4]
# b => [1, 1, 2, 2, 3, 3, 4, 4], 'b' is not mutated

# bang operator (!) if added to this method will function destructively, much like the way the 'delete' method works. 
# NOTE: (!) does not always mutate the caller, double check the context that its used.
b = [1, 1, 2, 2, 3, 3, 4, 4,]
b.uniq! # => [1, 2, 3, 4]
# b = [1, 2, 3, 4] has functioned desctructively


# SELECT (method)
# iterates over an array and returns a new array that includes any items that return 'true' to the expression provided.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |number| number > 4 } # => [5, 6, 7, 8, 9, 10]
numbers # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] does not mutate the caller

# MUTATING THE CALLER
def mutate(arr)
  arr.pop 
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a) # this mutated the caller permanently even though 'a' was initialized outside of the method. The 6 element was popped out of the original array.
not_mutate(a) # non-destructive action, therefor the original variable was unmodified.

puts a # => [1, 2, 3, 4, 5]


# Nested Arrays
teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
teams[1] # => ["Frank", "Molly"]

# arrays with arrays inside them. I can compare arrays for equality using the '==' operator
a = [1, 2, 3]
b = [2, 3, 4]

a == b # false

b.pop # => 4
b.unshift(1) # [1, 2, 3]

a == b # true

# unshift (method)
# opposite of the 'pop' method. 'pop' takes the last item off the list, the 'unshift' method adds the aruments that I specify to the front of the list.

# to_s (method)
# used to create a string representation of an array. Ruby does this behind the scenes when I use string interpolation to print an array to the screen.
a = [1, 2, 3]
"It's as easy as #{a}" # "It's as easy as [1, 2, 3]", in order to get the orray to print properly, Ruby is calling the 'to_s' method on my array and 
# adding it into the string.


# Common Array Methods
# These are some common methods built in to it's Array 'class'.

# include? (method)
# checks to see if the argument given is included in the array. The '?' usually means it will return a boolean value.
a = [1, 2, 3, 4, 5]
a.include?(3) # true
a.include?(6) # false

# flatten (method)
# takes an array that contains nested arrays and creates a one-dimensional array. Non-destructive, doesnt mutate the caller.
a = [1, 2, [3, 4, 5], [6, 7]]
a.flatten # => [1, 2, 3, 4, 5, 6, 7]

# each_index (method)
# iterates through the array much like the 'each' method, however the variable represents the index number as opposed to the value at each index.
# doesn't mutate the caller.
a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is index #{i}" } # gives me the index number for all of the variables in the array.
# This is index 0
# This is index 1
# This is index 2
# This is index 3
# This is index 4
# => [1, 2, 3, 4, 5]

# each_with_index (method)
# works in a similar way to 'each_index'. Gives me the index number and the value of that element.
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
# 1. 1
# 2. 2
# 3. 3
# 4. 4
# 5. 5
# => [1, 2, 3, 4, 5]

# sort (method)
# returns a sorted array. It's not destructive.
a = [5, 3, 8, 2, 4, 1]
a.sort # => [1, 2, 3, 4, 5, 8]

# product (method)
# can combine two arrays and returns an array that is a combination of all elements from all arrays.
[1, 2, 3].product([4, 5]) # => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]


# each vs map
# each provides a simple way of iterating over a collection in Ruby and is more prefeered to using the 'for' loop. The 'each' method works on objects
# that allow for iteration and is commonly used along with a block. If given a block, 'each' runs the code in the block once for each element in the collection
# and returns the collection it was invoked on. If no block is given, it returns an Enumerator(class which allows both internal and external iteration):
a = [1, 2, 3]
a.each { |e| puts e }
# Outputs. I've iterated over each element on the array 'a', it returns [1, 2, 3]
1
2
3
# => [1, 2, 3]

# I can also modify the elements in 'a' and print them out. We printed the modified values and returned the original collection 'a':
# values: 3, 4, 5
# returns: [1, 2, 3]

a = [1, 2, 3]
a.each { |e| puts e + 2 }
# Outputs
3
4
5
# => [1, 2, 3]

# No block used, it returns an Enumerator:
a = [1, 2, 3]
a.each
# => #<Enumerator: [1, 2, 3]:each>

# map
# Works on objects that allow for iteration. Like 'each', when given a block it invokes the given block once for each element in the collection.
# Where map differs from each is the returned value. 'map' creates and returns a new array containing the values returned by the block:
a = [1, 2, 3]
a.map { |x| x**2 }
# => [1, 4, 9] a new array was created containing the returned values by the block, the new array was returned.

a = [1, 2, 3]
a.map { |x| puts x**2 }
# => [nil, nil, nil] Because 'puts' returns 'nil' every time the block is invoked 'nil' is returned which makes up the values in the newly created returned array.

# If no block is given, 'map' returns an Enumerator:
a = [1, 2, 3]
a.map 
#<Enumerator: [1, 2, 3]:each>

# EACH: use for iteration
# MAP: use for transformation

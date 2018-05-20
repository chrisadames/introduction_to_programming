# array_exercises.rb

# 1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]
number = 3

def search(n, a)
  if a.include?(n)
    puts "The number #{n} is in the array"
  else
    puts "The number #{n} is not in the array"
  end
end

search(number, arr)

# or:
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# or:
if arr.include?(number)
  puts "#{number} is indeed in the array."
end


# 2. What will the following programs return? What is value of 'arr' after each?

#   1. arr = ["b", "a"]                   
#      arr = arr.product(Array(1..3))     # argument(Array(1..3) => [1, 2, 3], # product method returns a new array with new combination with all elements
#      arr.first.delete(arr.first.last) 
      
#      returns: 1            
#      value of arr: arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]


#   2. arr = ["b", "a"] 
#      arr = arr.product([Array(1..3)]) 
#      arr.first.delete(arr.first.last) 

#      returns: [1, 2, 3]            
#      value of arr: arr = [["b"], ["a", [1, 2, 3]]]


# 3. How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]

arr.last.first


# 4. What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

#   1. arr.index(5) # => 3 # returns the index of the first object in the array that is equal to the argument i.e. 5, though there are two 5's in the array, we get returned the first 5 
#                     index method only returns the index of the first occurance of the object. 0 = 15, 1 = 7, 2 = 18, *3* = 5

#   2. arr.index[5] # => #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> # integer 8 but the square bracket, syntax is an error


#   3. arr[5] # => 8 # array element reference, the 5th element in the array is 8



# 5. What is the value a, b, and c in the following program?
string = "Welcome to America!"
a = string[6] # "e"
b = string[11] # "A"
c = string[19] # nil # an array index referenced beyond the length of the arry returns nil, Ruby does not return an error.


# 6. You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

#...and get the following error message:

TypeError: no implicit conversion of String into Integer 
  from (irb):2:in '[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in '<main>'

# What is the problem and how can it be fixed?
# I am attempting to set the value of an item in an array using a string as the key. Arrays are indexed with integers, not strings.
# I would modify the array by doing the following:
names[3] = 'jody' # => ["bob", "joe", "susan", "jody"]


# 7. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original
# array by a value of 2. I should have two arrays at the end of this program. The original array and the new array I've created.
# Print both arrays to the screen using the 'p' method instead of puts. 

x = [1, 2, 3, 4]
new_arr = []

x.each do |num|
  new_arr << num + 2
end

p arr
p new_arr




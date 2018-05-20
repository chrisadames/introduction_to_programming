# Strings with double quotes
"The man said, 'Hi there!'"

# Strings with single quotes and escaping
'The man said, \'Hi there!\''

# String Interpolation
a = 'ten'

puts "My favorite number is #{a}!"

# Symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"


# Example of integers
# 1, 2, 3, 50, 10, 4345098098

# Example of floats
# 1.2345, 2345.4267, 98.2234


puts "Hello, World!"
"Hello, World".nil?

if nil
  puts "Hello, World!"
end

# Since 1 is not "nothing" or a false value, the code within the if is run
if 1
  puts "Hello, World!"
end

# false and nil are !=
false == nil


# Operations

1 + 1 # 2
1 - 1 # 0
4 * 4 # 16


# Division '/' vs. Modulus '%'
16 / 4 # 4
16 % 4 # 0
16 % 5 # 1: the remainder of 16/5
15 / 4 # 3


# Multiplying and Dividing Floats

15.0 / 4 # 3.75 # float and integer gives a float
9.75 * 4.32 # 42.12


# Equality Comparison '==' equals
4 == 4 # true
4 == 5 # false

# Equality with strings
'foo' == 'foo' # true
'foo' == 'bar' # false
'4' == 4 # false, string vs integer

# String Concatenation
'foo' + 'foo' # "foofoo"
'foo' + 'bar' # "foobar"
'1' + '1' # 11 because they are both strings not integers
# 'one' + 1 # TypeError: can't concatenate a string with a number

# Type Conversion: String and Fixnum
'12'.to_i # 12, string into integer
'4'.to_i # 4
'4 hi there'.to_i # 4 only returns the number within the string
'hi there 4'.to_i # 0 because the number is at the end of the string
'4'.to_f # 4.0 string to float
'4 hi there'.to_f # 4.0
'hi there 4'.to_f # 0.0

# Basic Data Structures
# Array
[1, 2, 3, 4, 5] # array, used to organizae information into ordered list (indexed)
# returns [1, 2, 3, 4, 5]
[1, 2, 3, 4, 5][0] # returns 1, it's the first indexed variable in array

# Hash
{:dog => 'barks'} # returns {:dog => 'barks'} one key-value pair
{:dog => 'barks', :cat => 'meows', :pig => 'oinks'} # same returned
{:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat] # returns 'meows' (value)

# Expressions and Return: Ruby expressions always return a value, even if its nil

# Puts vs Return
puts 'stuff' # stuff => nil, expressions do stuff, but they also return nil(something)
a = puts "stuff"
puts a # => nil is returned because it put stuff

# Excercises

# 1: add two strings together that when concatenated returns full name
firstname = "Chris"
lastname =  "Adames"
puts "#{firstname} #{lastname}"

# 2: take a 4 digit number and find:
num = 1931
array = num.to_s.split(//)
# thousands place
puts array[0] # 1
# hundreds place
puts array[1] # 9
# tens place
puts array[2] # 3
# ones place
puts array[3] # 1

# 3: use hash to store list of movie titles with the year they came out, print the year
movies = {:Batman => 1983, :Superman => 1984, :Antman => 1985}
puts movies[:Batman]
puts movies[:Superman]
puts movies[:Antman]

# 4: Store the years from #3 in an array and output same as #3
movieyears = [1983, 1984, 1985]
puts movieyears[0]
puts movieyears[1]
puts movieyears[2]

# 5: create program that outputs the factorial of the numbers 5, 6, 7, 8
factarray = [5, 6, 7, 8]
factarray.each do |x|
  puts x.downto(1).inject(:*)
end

# 6: Write a program that calculates the squares of 3 float numbers 
square = [2.3, 1.9, 8.3]
square.each do |x|
  puts x * x
end

# 7: What does the error message tell me?
    # syntax error, unexpected ')', expecting '}'
    # means that I used the incorrect character when creating a hash


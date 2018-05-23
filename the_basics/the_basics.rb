# the_basics.rb


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

# conditional.rb


puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

# gets: gets input from user
# chomp: gets rid of the new line created when user enters data
# to_i: method to turn string into integer

# Example Conditionals

# 1
if x == x
  puts "x is 3"
end

# 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# 3 
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

# Ruby allows you to append the 'if' condition at the very end:
puts "x is 3" if x == 3

# unless: acts as the opposite of 'if':
puts "x is NOT 3" unless x == 3


# COMPARISONS: operator always returns a boolean value.

# Example: less than and greater than
4 < 5 # true
4 > 5 # false

# less than or equal to / greater than or equal to
4 <= 5 # true
5 >= 5 # true
4 >= 5 # false
4 >= 3 # true
4 >= 4 # true

# 'is equal to' operator: ==, anything to the left of the symbol is eaxactly equal to the right.
5 == 5 # true
5 == 6 # false
'5' == 5 # false (string vs integer)

# 'not equal to' operator: !=, anything on the left is not equal to the right
4 != 5 # true
4 != 4 # false
4 != 156 # true


# COMBINING EXPRESSIONS: combining multiple conditional expressions together to create specific scenario.

# 'and' operator: &&, left and right must be both TRUE
(4 == 4) && (5 == 5) # true
(4 == 5) && (5 == 5) # false
(4 == 5) && (5 == 6) # false

# 'or' operator: ||, either the left OR right must be TRUE 
(4 == 4) || (5 == 5) # true
(4 ==5 ) || (5 == 5) # true
(4 == 5) || (5 == 6) # false

# 'not' operator: !, when added in front of a boolean expression it will change that boolean value to its opposite.
!(4 == 4) # false

# ORDER OF PRECEDENCE: Ruby follows when deciding how to evaluate multiple expressions:
# list below is sorted from highest precedence (top)
# 1. <=, <, >, >= - comparison
# 2. ==, != - equality
# 3. && - logical AND
# 4. || - logical OR

if x && y || z # first the x && y statement is executed, if that statement is true, then program will execute the 
  # do something # if x && y is false, then program evaluates z, if z is true, the block of code will be run, else exits.
end

# Ternary Operator: quick if/else statement all on one line, combination of '?' and ':'
true ? "this is true" : "this is not true" # this is true
false ? "this is true" : "this is not true" # this is not true
# first the true/false on left of '?' gets evaluated, then executs the code as such: 
# true ? "this gets executed" : "this doesn't "
# false ? "this doesn't get executed" : "this does"


# CASE STATEMENT: similar to 'if' but different interface. Reserved words used are: case, when, else, end.
#   first i define the 'case' and then evaluating the value of the case and what operation to complete if that case is true.

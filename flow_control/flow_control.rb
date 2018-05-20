# FLOW CONTROL
# Conditionals: fork in the road formed by using a combination of 'if' statements and comparison operators
                # (<. >, <=, ==, !=, &&, ||)

# True and False
a = 5
if a
  puts "how can this be true?"
else
  puts "it is not true"
end

# the output is "how can this be true?". In Ruby, every expression evaluates to 'true' when used
# in flow control, except for 'false' and 'nil'.

if x = 5
  puts "how can this be true?"
else
  puts "it is not true"
end
# this code is NOT testing whether x is equal to 5, its assigning the variable x the value of 5, which will ALWAYS 
# be true. 

# NOTE: the x = 5 looks similar to x == 5, dont get confused.
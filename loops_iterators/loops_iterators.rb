# loops_iterators.rb


# a loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met.
# The loop method takes a block of code, thats denoted by {}/do..end and will execute that code until manually intervene
# with 'Ctrl + c' or inserting a 'break' statement inside the block.


# 'break' and 'next' are important loop control concepts that can be used with loop or any other loop construct in Rub7
# When break/next are combined with conditionals, I can build simple programs with interesting behavior.


# While Loops
# is given a parameter that evaluates to a boolean. Once that boolean becomes 'false'
# the while loop is not executed again, and the program continues after the 
# while loop.


# Until Loops
# The until loop is the opposite of the while loop. I can substitute it in
# order to phrase the problem in a different way.


# Do/While Loops
# Similar to 'while' loop, 1 important difference is that the code within the
# loop gets executed one time, prior to the conditional check to see if the
# code should e executed.

# The conditional check is placed at the end of the loop as opposed to the beginning.


# For Loops
# Used to loop over a collectioin of elements. Unlike a while loop where if we're not carefull
# we can cause an infinite loop, 'for' loops have a definite end since it's looping over a finite 
# number of elements. It begins with the reserved 'for', followed by a variable, then
# the 'in' reserved word, and then a collection of elements.

# Iterators
# Are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.


# Block
# is just some line of code ready to be executed. When working with blocks there are 2 styles:
#   1. {} : When everything can be contained in one line
#   3. do...end: When we are performing multi-line operations.


# Recursion
# calling a method from within itself.
# Example: If I want to know the double of a number, then the double of that number etc. If I wanted to double
# the number until the pre-doubled number is 10 or greater. I could use the 'Recursion' way to create a loop:

def doubler(start)
  puts start * 2
end

doubler(2) # 4, nil
doubler(4) # 8, nil
doubler(8) # 16, nil

# This can be done more simply using recursion:
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)
#2, 4, 8, 16 => nil

# This version calls the doubler method again, passing it the doubled version of the value stored in the start variable.


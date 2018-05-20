# more_stuff!_exercises.rb


# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"


def has_lab?(word)
  if /lab/.match(word)
    puts word
  else
    puts "No match here."
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")
# laboratory
# No match here.
# No match here.
# elaborate
# No match here.


# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the executed block" }

# Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.


# 3. What is exception handling and what problem does it solve?
# Exception handling is a structure used to handle the possibility of an error occurring in a program. It is a way of handling the 
# error by changing the flow of control without exiting the program entirely.

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the executed block" }


# 5. Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

# The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.


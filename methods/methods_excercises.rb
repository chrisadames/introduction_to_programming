# method_excercises.rb

# 1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its 
# parameter and returns a string.

def greeting(name)
  "#{name} as a string"
  puts "#{name} as a string"
end

greeting("Chris")


# 2. What do the following expressions evaluate to?

x = 2 # 2
puts x = 2 # nil
p name = "Joe" # "Joe"
four = "four" # "four"
print something = "nothing" # nil


# 3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  a * b 
end

puts multiply(4, 2) # 8


# 4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee") # nothing prints to screen


# 5. 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

def scream(words)
  puts words = words + "!!!!"
end

scream("Yippeeee")


# 6. What does the following error message tell you?
# ArgumentError: wrong number of arguments (1 for 2) in 'calculate_product' 4
# This means only 1 argument was provided a parameter and the 2nd is needed in order to return a value

# variables_exercises.rb

# 1. Write a program called 'name.rb' that asks the user to type in their name and then prints out a greeting
# message with their name included.
puts 'What is your name?'
name = gets.chomp

puts "So nice to meet you #{name}"


# 2. Write a program called 'age.rb' that asks a user how old they are and then tells them how old they will be in 
# 10, 20, 30 & 40 years.
puts 'Hi, how old are you?'
age = gets.chomp.to_i

puts "Wow, in 10 years you will be #{age + 10}, in 20 you'll be #{age + 20}, in 30 you'll be #{age + 30}"
      " and in 40, you'll be #{age + 40} years old"


# 3. Add another section onto name.rb that prints the name of the user 10 times. 
10.times {puts name}

# 4. Modify 'name.rb' again so that it first asks the user for their first name, saves it into a variable, then
# does the same for the last name. Then outputs their full name all at once.
puts 'What is your first name?'
first_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

puts "So nice to meet you #{first_name} #{last_name}"


# 5. Look at the following programs:
x = 0
3.times do
  x += 1
end
puts x

# and...
y = 0
3.times do
  y += 1
  x = y
end
puts x
# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
# The first prints 3 to the screen. The second throws an error undefined local variable or method 
# because x is not available as it is created within the scope of the do/end block.

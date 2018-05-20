# 1. Write a program called 'name.rb' that asks the user to type in their name and then prints out a greeting
# message with their name included.

# 4. Modify 'name.rb' again so that it first asks the user for their first name, saves it into a variable, then
# does the same for the last name. Then outputs their full name all at once.

puts 'What is your first name?'
first_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

puts "So nice to meet you #{first_name} #{last_name}"


# 3. Add another section onto name.rb that prints the name of the user 10 times. 

full_name = first_name + " " + last_name

10.times do 
  puts full_name
end





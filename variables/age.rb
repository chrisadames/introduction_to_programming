# 2. Write a program called 'age.rb' that asks a user how old they are and then tells them how old they will be in 
# 10, 20, 30 & 40 years.

puts 'Hi, how old are you?'
age = gets.chomp.to_i

puts "Wow, in 10 years you will be #{age + 10}, in 20 you'll be #{age + 20}, in 30 you'll be #{age + 30}"
      " and in 40, you'll be #{age + 40} years old"
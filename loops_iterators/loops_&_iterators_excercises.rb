# loops_&_iterators_excercises.rb

# 1. What does the 'each' method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# => [1, 2, 3, 4, 5]
# Array.each
# 'each' will always return the 'array' that it was called on


# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types 
#    "STOP". Each loop can get info from the user.

y = ""
while y != "STOP" do
  puts "Please input your favorite foods and input 'STOP' when complete: "
  z = gets.chomp
  puts "If you're done, please input 'STOP'"
  y = gets.chomp
end


# 3. Use the 'each_with_index' method to iterate through an array of my creation that
#    prints each index and value of the array.

my_array = ['Donut', 'Coffee', 'Bagels']

my_array.each_with_index do |b, index|
  puts "#{index + 1}. #{b}" 
end


# 4. Write a method that counts down to zero using recursion.

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)




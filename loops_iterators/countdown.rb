# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"

# code initially waits for my input before beginning the loop.

# First the program evaluates the line 'x >= 0', this evaluates to 'true'
# the program then beings the loop, executing puts x and the line after that
# x = x - 1. The program then returns to the top, now with the newly updated
# value of x and evaluates the x >= 0 again. This process repeats until the value
# of x is no longer greater than or equal to 0. It then exits the loop and continues
# wth the rest of the program.

# refactoring this loop:

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"

# chaned line from 'x = x - 1' to 'x -= 1', same thing with less typing.


# Until Loops

x = gets.chomp.to_i

until x < 0
  puts x -= 1
end

puts "Done!"

# Sometimes using the 'until' loop will allow me to write code that 
# is more readable and logical.
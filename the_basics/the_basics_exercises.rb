# the_basics_excercises.rb

# 1: add two strings together that when concatenated returns full name
firstname = "Chris"
lastname =  "Adames"
puts "#{firstname} #{lastname}"

# 2: take a 4 digit number and find:
num = 1931
array = num.to_s.split(//)
# thousands place
puts array[0] # 1
# hundreds place
puts array[1] # 9
# tens place
puts array[2] # 3
# ones place
puts array[3] # 1

# 3: use hash to store list of movie titles with the year they came out, print the year
movies = {:Batman => 1983, :Superman => 1984, :Antman => 1985}
puts movies[:Batman]
puts movies[:Superman]
puts movies[:Antman]

# 4: Store the years from #3 in an array and output same as #3
movieyears = [1983, 1984, 1985]
puts movieyears[0]
puts movieyears[1]
puts movieyears[2]

# 5: create program that outputs the factorial of the numbers 5, 6, 7, 8
factarray = [5, 6, 7, 8]
factarray.each do |x|
  puts x.downto(1).inject(:*)
end

# 6: Write a program that calculates the squares of 3 float numbers 
square = [2.3, 1.9, 8.3]
square.each do |x|
  puts x * x
end

# 7: What does the error message tell me?
    # syntax error, unexpected ')', expecting '}'
    # means that I used the incorrect character when creating a hash


# inline_exception_example.rb


zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# Before each call
# Can't do that!
# After each call

# It does so because it isn't possible to call the each method on an Integer which is the value of the zero variable. If we remove the rescue block, 
# the second puts method will not execute because the program will exit when it runs into the error. You can see why the word "rescue" is relevant here. 
# We are effectively rescuing our program from coming to a grinding halt. If we give this same code the proper variable, our rescue block never gets executed.


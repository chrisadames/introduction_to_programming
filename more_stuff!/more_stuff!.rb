# more_stuff!.rb

# Regex
# stands for regular expression, its a sequence of characters that form pattern matching rules.
# and is then applied to a string to look for matches:
#   like checking if the pattern "ss" appears in the string "Mississippli"
#   printing out the 3rd word of each sentence from a list of sentences
#   Find and replace all instances of "Mrs" with "Ms" in a sentence.
#   Does a string start with "St"?
#   Does a string end with "art"?
#   Does a string have non-alphanumeric characters in it?
#   Are there any whitespace characters in the string?
#   Find and replace all non-alphanumeric characters in a string with "-".

# creating regular expressions starts with the forward slash character (/). Inside two forward
# slashes I can place any caracters I would like to match with the string.
# We can use the (=~) operator to see if we have a match in our regular expression.

"powerball" =~ /b/ # => 5 returned, this means that the first match that took place was at the
# fifth INDEX of the string. Remeber indices start counting from zero. Since 5 is a truthy value
# (i.e., in Ruby, 5 evaluates to true), we can use it as a boolean to check for matches.

# On top of the =~ operator, I can use the 'match' method to perform regex comparisons as well.
# This method returns a 'MatchData' object that describes the match or 'nil' if there is no match.
/b/.match("powerball") # => #<MatchData "b">

# I can use a 'MatchData' object to act as a boolean value in my program.

# Ruby Standard Classes
# When i have a specific action that I need to perform, look for it first among 'Ruby's standard classes'
# Using libraries like the 'Math' module can help me solve problems more efficiently.
# i.e. if I want to calculate the sq root of a number, I dont have to create it. I can use Ruby's
# 'Math module' that includes the method 'sqrt' that I can use right away:
Math.sqrt(400) # => 20.0

# Use Ruby's built in libraries, standard classes instead of reinventing the wheel:
# Math module: 'constant'
        Math::PI # Pi 3.14
# Time class: to calculate what specific day July 4th occurred in 2008:
        t = Time.new(2008, 7, 4) # 2008-07-04 00:00:00 -0400
        t.monday? # => false
        t.friday? # => true

# Variables as Pointers
# example 1
a = "hi there"
b = a 
a = "not here"
# at this point b still = "hi there"
# if our last line of code was a = "hi there", the result would still be the same: a and b 
# in that case would still point to different addresses in memory; they would just happen to 
# have the same value.


# example 2
a = "hi there"
b = a
a << ", Bob"
# at this point b = "hi there, Bob"

# both of the above are different because 'variables are pointers to physical space in memory'
#     * variables are essentialy labels we create to refer to some physical memory address in my computer.
# remember that different memory space can in fact hold the same value but they are still different
# places in memory.
# This is the major point of this section: some operations will mutate the actual address 
# space in memory, thereby affecting all variables that point to that address space. Some 
# operations will not mutate the address space in memory, and instead will re-point the 
# variable to a new address space in memory.

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

# Remember when we're passing in arguments to a method, we're essentially assigning a variable 
# to another variable, like we did with b = a. Working with b in the test method may or may not 
# modify the a in the outer scope, depending on whether we modify the address space in memory 
# that a is pointing to.

# Blocks and Procs
# Blocks, like parameters, can be passed into a method just like normal variables. 

# passing_block.rb
# Here we are passing the numberinto the take_block method and using it in our block.call. 

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
# => Block being called in the method! 42


# Procs: are blocks that are wrapped in a proc object and stored in a variable to be passed around.

# proc_example.rb
talk = Proc.new do  
  puts "I am talking."
end

talk.call
# => I am talking.


# Procs can also take arguments if specified.

talk = Proc.new do |name|
  puts "I am talking to #{name}."
end

talk.call "Bob"
# => I am talking to Bob.


# passing_proc.rb
# Procs can be passed into methods:

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method."
end

take_proc(proc)
# 1. Proc being called in the method.
# 2. Proc being called in the method.
# 3. Proc being called in the method.
# 4. Proc being called in the method.
# 5. Proc being called in the method.


# Exception Handling
# is a specific process that deals with errors in a manageable and predictable way. The reserved word 'rescue'is used often. 
# Exception class: makes handling errors easier and uses the reserved words 'begin', 'rescue', and 'end' to signify exception handling.
# used when my program is interacting with the outside world and can behave in an unpredictable manner. Like when a 'nil' value makes its way into my program.

# exception_example.rb
begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example. log the error
end

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters"
  rescue
    puts "Something went wrong!"
  end
end

# bob's name has 3 letters
# joe's name has 3 letters
# steve's name has 5 letters
# Somethign went wrong!
# frank's name has 5 letters

# in this example we have a 'nil' value in our array. When we call .length on nil we get an erro. When exception, or erro
# is raised, the 'rescue' block will execute and then the program will continue to run as it normally would. If I didn't have the 
# 'rescue' block there, my program would stop once it hit the exception and I would lose the rest of my print-out.

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

# Exceptions & Stack Traces
# Exception is synonymous with an error. We say "an exception is raised" when something in the program goes wrong.

irb :001 > '1' + 1
TypeError: no implicit conversion of Fixnum into String

# In the example above, we see a TypeError because the two types don't match - one is a String, one is a Fixnum - and Ruby doesn't know how to add 
# them together. In Ruby terms, an exception is raised, which will halt execution unless there is code in place to rescue the exception. 

# Some other common built-in error types you may encounter are:
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError

# The stack trace first tells us where the error occurred and why: line 4 of greeting.rb, and the error was because the types don't match. 
# The error occured due to the call made in the 'main' context on line 8, which contains the line that called the method with incorrect arguments, line 4.

greeting.rb:4:in `+': no implicit conversion of Fixnum into String (TypeError)
  from greeting.rb:4:in `greet'
  from greeting.rb:8:in `<main>'



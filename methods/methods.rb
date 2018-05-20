# METHODS


# Instead of writing that piece of code over and over, there's a feature in most 
# programming languages called a procedure, which allows you to extract the common
# code to one place. In Ruby, we call it a method. 

def say # first i define the method name
  # method body goes here
end

# Many Rubyists will leave off parentheses when calling methods as a style 
# choice. For example, say() could be rewritten as just say. With arguments, instead of say("hi"), it could just be say "hi". This leads to more fluid reading of code, but sometimes it can be confusing. 
# A method definition creates its own scope outside the regular flow of 
# execution. This is why local variables within a method definition cannot be referenced from outside of the method definition. It's also the reason why local variables within a method definition cannot access data outside of the method definition (unless the data is passed in as a parameter).

a = 5

def some_method
  a = 3
end

puts a # still 5 because method definitions create their own scope that's entirely outside of the execution flow.

# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end

# Method definition

def print_num(num)
  puts num
end

# 2 ways to call methods
# 1: The some_method(obj) format is when you send arguments to a method call
# 2: Sometimes, you will see methods called with an explicit caller, like this a_caller.some_method(obj).

# Mutating the Caller: permanently altering the argument

def some_method(number)
  number = 7 # this is implicitly(absolutely) returned by the method
end

a = 5
some_method(a)
puts a # return 5, 7 not returned because 'number' is scoped at the method definition level.
        # method definitions cannot modify arguments passed in to them permanently.
        # exception is 'mutating the caller'

# To know which methods mutate the caller and which dont, I need to look them up
# in the documentation or memorize.

# Ruby is both a pass-by-value and pass-by reference language

# puts vs return: in Ruby every method returns something

# CHAINING METHODS
#   Because we know for certain that every method call returns something, we can chain methods together.

def add_three(n)
  n + 3 # this will return, not print, the value passed in + 3
end

add_three(5) # returns 8, since the add_three method call returns a value, we can keep calling methods on the returned value (8)

add_three(5).times { puts 'this should print 8 times'} # in irb, final returned value is 8, which means we can keep 
            # chaining method calls if we want.

# Chaining:
puts "hi there".length.to_s # returns "8" - a string because the String length method returns an integer, and we can call 'to_s'
            # on integers to convert them into strings.

def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?"} # we get error "undefined method 'times' for nill" nils dont know how to respond to a times method

add_three(5) # out put is 8(incremented value) => nil(returned value)
             # puts returns nil, since puts n + 3 is the last expression in the method definition, nil is now being returned
             # by the add_three method call. We can NO longer use add_three to keep chaining methods since it returns nil.

def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end           # we do this to print the incremented value as well as return it. We dont have to write 'return' new_value since
              # 'new_value' is the last expression in the method definition, its being implicitly returned. 


# METHODS AS ARGUMENTS

def add(a, b)
  a + b
end

def subtract(a, b) # defined method
  a - b            # parameters
end                # Ruby implicitly returns the last line of a method

add(20, 45) # returns 65
subtract(80, 10) # returns 70

# We can pass a method call as an argument to other methods. If method call returns integer value, it allows us to use
# method call as an argument to other methods.

def multiply(num1, num2)
  num1 * num2
end

# NESTED METHOD CALLS
multiply(add(20, 45), subtract(80, 10)) # 4550 retured. Passing method returns into method argument.
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5))) # 560 returned.
  # 1. We're passing add two arguments: subtract(80, 10)[70 returned] and multiply(subtract(20, 6)[14 returned], 
  # add(30, 5)[35 returned])[14*35 = 490 returned]. adding 70 + 490 = 560 returned.



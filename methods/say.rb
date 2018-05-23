# say.rb


puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

# what we've done is extracted the logic of printing out text, so that our 
# program can have more flexibility.
def say(words) # words is a local var, scoped at the method definition level cannot reference this local variable outside of the say method definition.
  puts words # argument
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# We call (or invoke) the method by typing its name and passing in arguments. 
# You'll notice that there's a (words) after say in the method definition. 
# This is what's called a parameter.
# term 'method invocation' to refer to calling a method.
# Arguments are pieces of information that are sent to a method invocation to 
# modified or used to return a specific result. We "pass" arguments to a method when we call it. 

def say(words)
  puts words + '.'    ## <= We only make the change here!
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# structure your method definition so that it always works, whether given parameters or not.

def say(words='hello') # assigned a default parameter in case the caller doesn't send any arguments.
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

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

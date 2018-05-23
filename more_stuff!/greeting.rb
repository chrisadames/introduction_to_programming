# greeting.rb


def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)

# => Hello, John  The first use of the greet method supplies a String as the parameter, and so the output is what you'd expect it to be

# The stack trace first tells us where the error occurred and why: line 4 of greeting.rb, and the error was because the types don't match. 
# The error occured due to the call made in the 'main' context on line 8, which contains the line that called the method with incorrect arguments, line 4.

greeting.rb:4:in `+': no implicit conversion of Fixnum into String (TypeError)
  from greeting.rb:4:in `greet'
  from greeting.rb:8:in `<main>'

# When ruby invokes a method, the method is added to Ruby's 'stack'. In the simple example above when we called greet("John"), 
# program execution would look like this: main -> greet -> puts -> exit and return to main

# Now we can make a little more sense of the output from the error, as it provides a detailed trace (known as a stack trace) 
# that shows the flow of execution and where the error occurred.

# In the second method invocation, greet(1), an error occurs and the program execution flow didn't exit back to main, and 
# stayed in the greet method. The program execution looks like this: main -> greet -> puts



def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person)+ ""
end

decorate_greeting("John")
decorate_greeting(1)

# => H e l l o, J o h n
greeting.rb:31:in `space_out_letters': undefined method `split' for 1:Fixnum (NoMethodError)
  from greeting.rb:35:in `greet' from greeting.rb:39:in `decorate_greeting'
  from greeting.rb:43:in `<main>'

# exception flow: main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -> decorate_greeting -> main

# Looking at the stack trace, you can see this happening: on line 43 (the beginning of the chain where the error originated) the decorate_greeting method is called.
# It then identifies line 39, where the greet method is called by decorate_greeting, and then line 35 where greet calls space_out_letters. Because the function 
# 'split' expects a string, we get an error, along with a trace of the calls that lead up to that error. In a small script this is less useful, but in a larger codebase, 
# being able to trace the execution flow is a very useful way to drill down to the source of the error.
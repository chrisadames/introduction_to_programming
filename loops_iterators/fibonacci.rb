# fibonacci.rb


# Using Recursion

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

# Each time the code branches off again, I'm calling the 'fibonacci' function from within itself two times.
# NOTE: Remember with recursion there is some baseline condition that returns a value, which then
#       'unwinds' the recursive calls. Think of the successive recursive calls building up, until some 
#       value is returned, and only then can the recursive calls be evalued.
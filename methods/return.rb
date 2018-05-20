def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value # 7 returned: We're saving the returned value of the add_three method invocation in a variable called
                    #   returned_value. Then we print returned_value to the output to see what it has inside.
                    #   if I want to explicitly return a value, i can use the 'return' keyword.

# changed code:
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value # still returns 7. When I place a 'return' in the middle of the add_three method definition, it just returns
                    # the evaluated result of 'number + 3' = 7, without executing the next line.

# NOTE: 'return' word is not required in order to return something from a method. Example:
def just_assignment(number)
  foo = number + 3
end

puts just_assignment(2) # 5, because the assignment expression evaluates to 5, therefore that's returned.
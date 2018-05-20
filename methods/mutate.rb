a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}" # a = [1, 2]

# We have permanently modified the local variable a by passing it to the 
# mutate method, even though a is outside the method definition's scope. 
# This is because the pop method mutates the caller.

a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}" # a = [1, 2, 3]
# This is because the last method does not mutate the caller.

# puts vs return
# 1. We print out 'a' as we initially defined it.
# 2. We print out the value returned by the mutate method.
# 3. We print out the value of 'a' after the mutate method.

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a) # 3 returned as the result of array.pop, back to where it's being called from.
p "After mutate method #{a}"



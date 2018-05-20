# conditional_while_loop_with_break.rb

x = 0

while x <= 10
  if x == 7
    break 
  elsif x.odd?
    puts x
  end
  x += 1
end

# the entire loop exits when the value of x reaches 7 in the loop, thats why the print out only goes to 5.
    
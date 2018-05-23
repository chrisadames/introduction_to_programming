# conditional_while_loop.rb


# This loop uses the 'odd?' method to decide if the current variable in the loop
# is odd. If it is, it prints to the screen. Next, 'x' increments by 1,
# and then the loop proceeds to the next interation.

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

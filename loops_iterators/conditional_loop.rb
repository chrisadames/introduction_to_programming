# conditional_loop.rb

i = 0
loop do 
  i += 2
  puts i
  if i == 10
    break # this will cause execution to exit the loop
  end
end

# puts 2, 4, 6, 8 , 10

# break wasnt executed during the first 4 iterations through the loop,
# but on the 5th iteration, the if statemet evaluated to true and so 
# the code within the if stateent was executed, which is just 'break',
# and execution exited the loop.





# next_loop.rb

# Similar to 'break' to exit a loop, I can use the keyword 'next'
# to skip the rest of the current iteration and start executing the next iteration.

i = 0
loop do 
  i += 2
  if i == 4
    next # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end

# puts 2, 6, 8, 10. 4 skipped.




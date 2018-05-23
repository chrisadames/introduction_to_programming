# perform_again.rb


loop do 
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

# The condition to 'break' out of the loop occurs at the end, this ensures
# the loop executes at least once.





# case_statement.rb


a = 5

case a 
  when 5
    puts "a is 5"
  when 6
    puts "a is 6"
  else
    puts "a is neither 5, nor 6"
  end

# I can also save the result of a case statement into a 'variable':


# case_statement.rb <-- refactored

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer

# I dont necesarily have to give 'case' and argument, i could do the below:


# case_statement.rb <-- refactored with no case argument

a = 5

answer = case 
  when a == 5
    "a is 5"
  when a == 6
    "a is 6"
  else
    "a is neither 5, nor 6"
end

puts answer







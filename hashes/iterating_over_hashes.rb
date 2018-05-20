# iterating_over_hashes.rb

person = {name: 'bob', height: '6ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# Bob's name is bob
# Bob's height is 6 ft
# Bob's weight is 160 lbs
# Bob's hair is brown

# we used the each method and assigned a variable to both the key and the value. Key to key variable and value to the value variable.


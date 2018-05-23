# hash_exercises.rb


# 1. Given a hash of family members, with keys as the title and an array of names as the values,
# use Ruby's built-in select method to gather only immediate family members' names into a new array.

# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }

new_arr = family.fetch(:sisters) + family.fetch(:brothers)

# solution:
p new_arr

immediate_family = family.select do |k, v|
  k == :sisters || v == :brothers
end

arr = immediate_family.values.flatten

p arr


# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!?
# Write a program that uses both and illustrate the differences.

# merge does not mutate the caller and merge! does mutate the caller.
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
weight[:weight]
puts cat.merge(weight)
puts cat  # => {:name=>"whiskers"}
puts weight  # => {:weight=>"10 lbs"} 
puts cat.merge!(weight)  
puts cat  # => {:weight=>"10 lbs", :name=>"whiskers"}
puts weight  # => {:weight=>"10 lbs"}


# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
#    Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
my_hash = { key_1: "value 1", key_2: "value 2" }

# write a program that loops through a hash and prints all of the keys.
my_hash.each_key { |key| puts key }

# write a program that does the same thing except printing the values. 
my_hash.each_value { |value| puts value }

# write a program that prints both.
my_hash.each { |key, value| puts "The opposite of #{key} is #{value}" }


# 4. Given the following expression, how would you access the name of the person?
person = { name: 'Bob', occupation: 'web developer', hobbies: 'painting' }

person[:name]


# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
person = { name: 'Bob', occupation: 'web developer', hobbies: 'painting' }

if person.has_value?("Bob")
  puts "Got it!"
else
  puts "Nope!"
end


# 6. Given the array...
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in 
# them but in a different order. Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
(etc)

# solution:

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "-----"
  p v
end

# 7. Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?
# The first hash that was created used a symbol x as the key. 
# The second hash used the string value of the x variable as the key.


# 8. If you see this error, what do you suspect is the most likely problem?
#     NoMethodError: undefined method `keys' for Array

#     A. We're missing keys in an array variable.

#    * B. There is no method called keys for Array objects.

#     C. keys is an Array object, but it hasn't been defined yet.

#     D. There's an array of strings, and we're trying to get the string keys 
#        out of the array, but it doesn't exist.




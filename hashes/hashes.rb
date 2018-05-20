# Hashes
# Ruby versions before 1.9 do not maintain the order in which I create the hashes.
# is a data structure that stores items by associated keys. This is contrasted against arrays, which store items by and ordered
# index. Entries in a hash are often referred to as 'key-value pairs'. This creates an associative representation of data.

# Most commonly, a hash is created using symbols as keys and any data types as values. All key-value pairs in a hash are surrounded
# by curly braces {} and comma separated.

# Hashes can be created with two syntaxes. The older syntax comes with a '=>' sign to separate the key and the value.
old_syntax_has = {:name => 'bob'} # => {:name=>'bob'}

# the newer syntax is introduced in Ruby version 1.9 and is much cimpler:
new_has = {name: 'bob'}

# I can also have hashes with many key-value pairs:
person = { height: '6 ft', weight: '160 lbs' }

# to add to an existing has:
person[:hair] = 'brown' # => "brown"
person # => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

# removing from an existing hash:
person.delete(:age) # => 62

# retrieving information from a hash:
person[:weight] # => "160 lbs"

# merging two hashes together:, using bang operator (!) to mutate the caller
person.merge!(new_hash) # => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}

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


# optional_paramters.rb

# I have the ability to assign default parameters to my methods so that the output is always consisten. I can 
# use a hash to accept otpional parameters when I am creating methods as well.

def greeting(name, options ={})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})

# empty? method used to detect whether the options parameter, which is a hash, had anything passed into it.
# at the end, I called the method twice, once using no parameters and the second using a hash to send the optional parameters.

# I can also pass in arguments to the greeting method without the curly braces {}. They are not required when a hash is the last argument.

greeting("Bob", age: 62, city: "New York City")


# Hashes vs. Arrays
# 1. If the data needs to be associated with a specific label: use Hashes
# 2. If order matters: use Arrays
# 3. If I need a "stack" or a "queue" structure: use Arrays


# HASH KEYS
# symbols are most commonly used 'key:'
# other options but less commonly used are strings, integers, floats, arrays, or hashes
# {"height" => "6 ft"}     # string as key
# => {"height"=>"6 ft"}
# {["height"] => "6 ft"}   # array as key
# => {["height"]=>"6 ft"}
# {1 => "one"}             # integer as key
# => {1=>"one"}
# {45.324 => "forty-five point something"}  # float as key
# => {45.324=>"forty-five point something"}
# {{key: "key"} => "hash as a key"}  # hash as key
# => {{:key=>"key"}=>"hash as a key"}


# Common Hash Methods that come with Hash class:

# has_key? 
# allows me to check if a hash contains a specific key and returns a boolean value.
# name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
# name_and_age.has_key?("Steve") # => true
# name_and_age.has_key?("larry") # => false

# select
# allows me to pass a block and will return any key-value pairs that evaluate to true when ran through the block.
# name_and_age.select { |k,v| k == "Bob" } # => {"Bob" => 42}
# name_and_age.select { |k,v| (k == "Bob") || (v == 19) } # => {"Bob => 42, "Joe" => 19}

# fetch
# allows me to pass a given key and it will return the value for that key if it exists. I can also specify an option
# for return if that key is not present.
# name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
# name_and_age.fetch("Steve") # => 31
# name_ange_age.fetch("Larry") # => KeyError: key not found: "Larry"
# name_and_age.fetch("Larry", "Larry isn't in this hash") # => "Larry isn't in this hash"

# to_a
# this method returns an arry version of my hash when called. It doesn't modify the hash permanently.
# name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
# name_and_age.to_a # => [["Bob", 42], ["Steve", 31], ["Joe", 19]]

# keys and values
# if I want to just retrieve all the keys or all the values out of a hash:
# name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
# name_and_age.keys # => ["Bob", "Steve", "Joe"]
# name_and_age.values # => [42, 31, 19] 
# to print all of the keys in a hash: name_and_age.keys.each { |k| puts k}.
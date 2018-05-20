# proc_example.rb

talk = Proc.new do  
  puts "I am talking."
end

talk.call
# => I am talking.


# Procs can also take arguments if specified.

talk = Proc.new do |name|
  puts "I am talking to #{name}."
end

# talk is holding the method(block of code)

talk.call "Bob"
# => I am talking to Bob.


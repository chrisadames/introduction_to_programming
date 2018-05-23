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

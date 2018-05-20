# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example. log the error
end

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters"
  rescue
    puts "Somethign went wrong!"
  end
end

# bob's name has 3 letters
# joe's name has 3 letters
# steve's name has 5 letters
# Somethign went wrong!
# frank's name has 5 letters

# in this example we have a 'nil' value in our array. When we call .length on nil we get an erro. When exception, or erro
# is raised, the 'rescue' block will execute and then the program will continue to run as it normally would. If I didn't have the 
# 'rescue' block there, my program would stop once it hit the exception and I would lose the rest of my print-out.
# flow_control_exercises.rb


# 1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the 
# results.
(32 * 4) >= 129 # false
false != !true # false
true == 4 # false
false == (847 == '847') # true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true


# 2. Write a method that takes a string as argument. The method should return a new, all-caps version of the string, 
# only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String 
# class has a few methods that would be helpful. Check the Ruby Docs!)
def a(string)
  if string.length > 10
    string.upcase
  else
    puts "string length is too short"
  end
end

puts a("this is only a test")


# 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 
# 0 and 50, 51 and 100, or above 100.
puts "please enter a number between 0 - 100"
a = gets.chomp.to_i

answer = case
  when a < 0
    "please put a number more then zero"
  when a < 51 && a > 0
    "#{a} is a number between 0 and 50"
  when a > 50 && a < 101
    "#{a} is a number between 51 and 100"
  else
    "#{a} is a number higher then 100"
end

puts answer


# 4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor 
# and then run each block of code to see if you were correct.
1. '4' == 4 ? puts("TRUE") : puts("FALSE") # puts("FALSE")

2. x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3) # 3 = 3 Did you get it right?
     puts "Did you get it right?"
   else
     puts "Did you?"
   end

3. y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y) # true, Alright now!
     puts "Alright now!"
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end


# 5. Rewrite your program from exercise 3 using a case statement. Wrap this new case statement in a method and
# make sure it still works.
puts "please enter a number between 0 - 100"
a = gets.chomp.to_i

def answer(a)
  answer = case
    when a < 0
      "please put a number more then zero"
    when a < 51 && a > 0
      "#{a} is a number between 0 and 50"
    when a > 50 && a < 101
      "#{a} is a number between 51 and 100"
    else
      "#{a} is a number higher then 100"
  end
  puts answer
end

answer(a)


# 6. When you run the following code...
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

# You get the following error message..
# syntax error, unexpected end-of-input, expecting keyword_end
# Why do you get this error and how can you fix it? because we need to close/end the def equal_to_four.
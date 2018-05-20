# divide.rb

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e 
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

# 4
# divided by 0
# 
# 2

# Here we are rescuing the ZeroDivisionError and saving it into a variable e. We then have access 
# to the message method that the ZeroDivisionError object has available.



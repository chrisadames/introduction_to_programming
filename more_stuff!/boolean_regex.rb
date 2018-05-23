# boolean_regex.rb


def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball") # We have a match!
has_a_b?("football") # We have a match!
has_a_b?("hockey") # No match here.
has_a_b?("golf") # No match here.
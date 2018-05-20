# passing_block.rb

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
# => Block being called in the method! 42

# Here we are passing the numberinto the take_block method and using it in our block.call. 
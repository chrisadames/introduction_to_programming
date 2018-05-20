# passing_proc.rb

# Procs can be passed into methods:

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method."
end

take_proc(proc)
# 1. Proc being called in the method.
# 2. Proc being called in the method.
# 3. Proc being called in the method.
# 4. Proc being called in the method.
# 5. Proc being called in the method.
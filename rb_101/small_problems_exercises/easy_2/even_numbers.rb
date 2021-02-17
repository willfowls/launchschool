# Print all even numbers 1 to 99 
# All on different lines

nums = (1..99).to_a
nums.each do |v|
  puts v if v.even?
end
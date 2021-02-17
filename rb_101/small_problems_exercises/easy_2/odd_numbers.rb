# Print all odd numbers 1 to 99 
# Each number must be on a separate line

nums = (1..99).to_a
nums.each {|n| puts n if n.odd?}
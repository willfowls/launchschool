# || operator returns truthy value if either operands are true
# && operator returns truthy value only if both operands are true
# Write a method that takes two arguments
# Return true if one argument is true
# Return false if two arguments are true and false if none are true

def xor?(arg1, arg2)
  if arg1 == false && arg2 == false
    puts false
  elsif arg1 == true && arg2 == true
    puts false
  else
    puts true
  end
end



xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
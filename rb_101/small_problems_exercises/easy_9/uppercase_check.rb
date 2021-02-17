# Write method that takes string argument
# Return true if all abc characters in string are uppercase
# Return false otherwise
# Ignore non alphabetic characters

def uppercase?(string)
  if string == string.upcase
    return true
  else
    return false
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
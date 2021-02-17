# Write a method that takes two arguments
# One integer is an integer
# Another integer is a boolean
# Calculate the bonus for a given salary
# Bonus is half salary if boolean is true, otherwise it is 0

def calculate_bonus(salary,torf)
  if torf == true
    puts salary / 2
  else
    puts 0
  end
end

calculate_bonus(50000, true)
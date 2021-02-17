# Write a method that takes a number as an argument
# If argument is positive, return negative of that number
# If argument is negative or zero, return original number

def negative(number)
  if number.positive?
    -number
  elsif number.negative?
    number
  else
    number
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0    # There's no such thing as -0 in ruby
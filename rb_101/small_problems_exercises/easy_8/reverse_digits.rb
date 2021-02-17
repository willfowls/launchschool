require 'pry'
# Write a method that takes positive integer arguments
# Return number with digits reversed
# No reverse method

def reversed_number(number)
  array = number.to_s.chars
  new_number = []
  counter = 0

  loop do
    counter -= 1
    new_number << array[counter] unless array.last == 0
    break if counter == -array.size
  end
  new_number.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
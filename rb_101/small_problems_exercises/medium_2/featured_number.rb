# Featured number is:
  # Odd number, multiple of 7, and digits occur once each
# Write method that takes single integer as an argument
# Return the next featured number greater than the argument
# Return an error message if there is no next featured number

require 'pry'

def featured(number)
  featured_number = 0
  counter = number
  loop do
    if number >= 9_999_999_999
      return 'There is no possible number that fulfills those requirements'
      break
    end
    counter += 1
    if counter.odd? && counter % 7 == 0 && counter.to_s.chars.uniq == counter.to_s.chars
      featured_number += counter
    end
    break if featured_number > 0
  end
  counter
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1023547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) == 'There is no possible number that fulfills those requirements'
# A double number is a number with an even number of digits whose left side digits are the same as the right side
# 44, 3333, 103103, 7676 are all double numbers; 107, 334433, and 444 are not
# Write a method that returns 2 times the number provided as an argument unless the argument is a double number
# If argument is a double number, return the number as is

require 'pry'
def twice(number)
  num = number.to_s
  center = (num.size / 2) - 1
  if num.size.odd?
    number = number * 2
  elsif num.size.even? && num[0..center] != num[(center + 1)..-1]
    number = number * 2
  elsif num.size.even? && num[0..center] == num[(center + 1)..-1]
    number = number
  end
  number
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
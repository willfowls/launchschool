# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number
# Then compute the sum of those multiples
# You may assume number passed is greater than 1

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
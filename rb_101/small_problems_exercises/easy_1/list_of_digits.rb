# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number

def d(n)
  n.to_s.chars.map(&:to_i)
end

p d(12345)
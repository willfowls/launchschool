# Use multiply method from multiply_two_numbers.rb for new method
# New method will be called square
# Square will take one argument and square the argument

def multiply(n1, n2)
  n1 * n2
end

def square(n1)
  multiply(n1, n1)
end

puts square(12) == 144 # --> true
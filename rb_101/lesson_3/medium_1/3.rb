# Alan wrote the following method, which was intended to show all of the factors of
# the input number:
# Alyssa noticed that this will fail if input is 0 or negative number

# Honestly not sure how to solve this problem and answer didn't give full code so I'm stumped
# NO CHECK

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

p factors(24)
# Alyssa asked ben to write a basic fibonacci calculator
# User passes in two numbers and calculator will keep computing the sequence
# until limit is reached
# Ben ran the code and ran into an error about a limit variable.
# What's wrong with the code?
# CHECK

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# At first limit was defined outside of the method and since methods do not have access
# to the outer scope, this is what was causing the issue
# Launch school suggested adding a third argument 'limit', which makes the most sense
# because we want to specify the limit for the first and second number
# You get the same result if you define limit = 15 within the method
# The problem with that is if you want to have a limit of 20 you can't do so with that method
# since the limit is defined as a static 15
# Write method that takes two arguments
# First is starting number
# Second is ending number
# Print out all numbers between two numbers EXCEPT:
  # If a number is divisible by 3 print fizz
  # If a number is divisible by 5 print buzz
  # If a number is divisible by 3 and 5 print fizzbuzz
  def fizzbuzz(min, max)
    numbers = (min..max).to_a
    fizz_buzz = []
    numbers.map do |number|
      if number % 3 == 0 && number % 5 == 0
        fizz_buzz << 'FizzBuzz'
      elsif number % 3 == 0
        fizz_buzz << 'Fizz'
      elsif number % 5 == 0
        fizz_buzz << 'Buzz'
      else
        fizz_buzz << number
      end
    end
    fizz_buzz.join(', ')
  end

p fizzbuzz(1, 15) == '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz'
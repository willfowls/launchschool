# Write a method that takes one argument, an array containing integers, and returns the average of all the numbers in the array
# The array will never be empty and the numbers will always be positive integers
# Your result should also be an integer

def average(numbers)
  sum = numbers.reduce(:+)
  sum / numbers.count
end
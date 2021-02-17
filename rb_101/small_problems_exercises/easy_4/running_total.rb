# Write a method that takes an array of numbers
# Return an array with same number of elements
# Each element is a running total of the original arrays values

array = [1,2,3]

def running_total(arr)
  sum = 0
  arr.map { |v| sum += v }
end

puts running_total(array)
# Write method that takes array of integers
# Multiply all numbers of array together
# Divide result by number of array elements
# Print the result rounded to 3 decimal places
# Assume array is non empty

def show_multiplicative_average(array)
  final_number = 1.to_f
  division_number = []
  array.map do |v|
    division_number << final_number *= v
  end
  final_number = division_number.pop / array.size
  format('%.3f', final_number).to_f
end

p show_multiplicative_average([3, 5])  == 7.500         # => The result is 7.500
p show_multiplicative_average([6])  ==  6.000         # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667 # => The result is 28361.667
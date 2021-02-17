# Write method that takes two integer array arguments
# Return a new array that contains product of numbers with same index
# Assume arguments contain same number of elements

def multiply_list(array1, array2)
  products_array = []
  array1.each_with_index do |element, index|
    products_array << element * array2[index]
  end
  products_array
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
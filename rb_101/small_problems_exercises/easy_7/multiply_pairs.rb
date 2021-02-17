# Write method that takes two arrays of integers as arguments
# Return a new array that has all the possible multiplication combos for each number in each array
# Sort them in ascending order

def multiply_all_pairs(array1, array2)
  products_array = []

  array1.each do |num1|
    array2.each do |num2|
      products_array << num1 * num2
    end
  end
  products_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
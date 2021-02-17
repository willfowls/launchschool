# Write method that combines two arrays passed as arguments
# Return a new array that contains all elements from both arrays
# Elements in new array are taken in alternation from array 1 and array 2

def interleave(array1, array2)
  new_array = []
  array1.each_with_index do |element, index|
    new_array << element << array2[index]
  end
  new_array
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
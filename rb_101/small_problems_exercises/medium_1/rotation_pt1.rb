# Write a method that rotates an array by moving the first element to the end of the array
# Original array should not be modified
# Do not use built in rotate method

def rotate_array(array)
  rotated_array = []
  counter = 0
  loop do
    rotated_array << array[counter + 1]
    counter += 1
    break if counter == array.size
  end
  if rotated_array.last == nil
    rotated_array[-1] = array.first
  end
  rotated_array
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
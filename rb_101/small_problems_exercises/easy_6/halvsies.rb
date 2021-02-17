# Write method that takes array argument
# Return one array that is nested with two arrays
# If original array contains odd number of elements, middle element is placed in first half array

def halvsies(array)
  stop_index = ''
  new_array = []
  other_new_array = []
  combined_array = [new_array, other_new_array]

  if array.size == 1
    stop_index = 1
  elsif array.size.odd?
    stop_index = (array.size / 2) + 1
  elsif array.size.even?
    stop_index = (array.size / 2)
  elsif array.empty?
    combined_array
  end
  
  counter = 0
  loop do
    break if array.empty?
    new_array << array[counter]
    counter += 1
    break if counter == stop_index
  end

  counter = stop_index
  loop do
    break if array.empty?
    other_new_array << array[counter]
    counter += 1
    break if counter >= array.size
  end
  other_new_array.compact!
  combined_array
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
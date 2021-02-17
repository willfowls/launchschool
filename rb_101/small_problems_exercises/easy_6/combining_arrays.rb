# Write method that takes two array arguments
# Return arraythat contains all values from argument arrays
# No duplication of values in returned array

def merge(array1, array2)
  new_array = []

  array1.each do |v|
    new_array << v
  end
  array2.each do |v|
    new_array << v
  end

  new_array.uniq!.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
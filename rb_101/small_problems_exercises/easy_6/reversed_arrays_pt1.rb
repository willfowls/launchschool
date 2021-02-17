# Write method that takes array argument
# Reverse its elements in place 
# Mutate array passed into method
# Return value should be same array object

def reverse!(array)
  counter = array.size
  new_array = []

  loop do 
    counter -= 1
    new_array << array[counter]
    break if counter == 0
  end
  array = new_array
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
# Write method that takes array
# Return new array with elements in reverse order
# Do not modify original
# No built in methods like reverse or reverse!

def reverser(array)
  counter = array.size
  new_array = []

  loop do 
    counter -= 1
    new_array << array[counter]
    break if counter == 0
  end
  new_array
end

p reverser([4,3,2,1])
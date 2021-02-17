# Write a method that returns an array
# New array contains every other element of array argument method is given
# Values returned should be those in the 1st, 3rd, etc. indices of array


def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end
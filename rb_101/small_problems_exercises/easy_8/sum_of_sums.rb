# Write method that takes array
# Return sum of sums for each leading subsequence in array
# ie [3,4,5] = [3,7,12]

def sum_of_sums(array)
  new_array = []
  sum = 0
  array.map do |element|
    new_array << sum += element
  end
  new_array.sum
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
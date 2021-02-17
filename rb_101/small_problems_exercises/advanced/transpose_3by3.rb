# Write a method that takes a nested array with 3 arrays within array
# Returns new nested array with the following:
  # First element of new nested array is an array with the 0 index of each 3 arrays
  # Second element of new nested array is an array with the 1 index of each 3 arrays
  # Third element of new nested array is an array with the 2 index of each 3 arrays

def transpose(matrix)
  first_array = [matrix[0][0], matrix[1][0], matrix[2][0]]
  second_array = [matrix[0][1], matrix[1][1], matrix[2][1]]
  third_array = [matrix[0][2], matrix[1][2], matrix[2][2]]
  final_array = [first_array, second_array, third_array]
end
  
new_matrix = transpose([[1, 5, 8], [4, 7, 2], [3, 9, 6]])
matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
  
  
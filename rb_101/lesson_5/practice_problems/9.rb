# Given this data structure, return a new array of same structure
# Difference being the sub arrays are ordered alphabetically and numerically in descending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.each do |v|
  v.sort!
  v.reverse!
end
p arr

# My way achieved desired output. The desired method used for learning purposes is below

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
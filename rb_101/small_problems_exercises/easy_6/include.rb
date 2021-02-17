# Write a method that takes an array argument and a search value argument
# Method should return true if search criteria is in array, false otherwise
# Do not use array include? built in method

require 'pry'
def include?(array, number)
  return false if array.empty?
  array.each do |element|
    return true if array.count(number) > 0
    return false if array.count(number) == 0
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

# Write a method that takes array of integers between 0 and 19
# Return array of those integers sorted based on the english words for each number

WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
numbers.sort_by { |number| WORDS[number] }
end

puts alphabetic_number_sort([1,2,3,4,5,6,7,8])
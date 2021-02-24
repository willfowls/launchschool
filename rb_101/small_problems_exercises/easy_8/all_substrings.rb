# Write a method that returns all substrings of a string
# Returned list should be order by where in the string the substring begins
# All substrings that start at position 0 come first, etc.
# Return substrings from shortest to longest

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end
# Write method that returns list of all substrings that start with original string
# Return value should be ordered from shortest to longest substring

def leading_substrings(words)
  new_array = []
  string = ''
  words.chars.map do |element|
    new_array << string += element
  end
  new_array
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
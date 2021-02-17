# Write a method that takes two string arguments
# Determine longer of two strings
# Return results of concatenating shorter string, longer string, and shorter string again
# You may assume the strings are different lengths


def short_long_short(s1, s2)
  if s1.length > s2.length
    puts "#{s2}#{s1}#{s2}"
  elsif s2.length > s1.length
    puts "#{s1}#{s2}#{s1}"
  end
end

short_long_short('will', 'willard') #--> 'willwillardwill'

# Examples:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') #== "fghabcdefgh"
# short_long_short('', 'xyz') #== "xyz"
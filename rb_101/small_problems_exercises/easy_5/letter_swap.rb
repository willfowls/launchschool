# Write method that takes string of words 
# Return string where first and last letters of every word are swapped
# Assume string contains only words and spaces

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
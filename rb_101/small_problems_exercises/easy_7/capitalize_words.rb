# Write a method that takes string argument
# Return a new string that has first character of every word capitalized
# Lowercase all other letters except first
# Assume words are a sequence of non blank characters

def word_cap(string)
  string_array = string.downcase.split
  string_array.map do |str|
    str.capitalize!
  end
  string_array.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
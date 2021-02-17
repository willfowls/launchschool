# Write method that takes string argument
# Return a new string where every consonant character is doubled
# Vowels, digits, punctuation, and whitespace should not be doubled

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string_array = string.chars
  new_string = []

  string_array.each do |element|
    if CONSONANTS.include?(element.downcase)
      new_string << element * 2
    else
      new_string << element
    end
  end
  new_string.join
end

p double_consonants('String') == 'SSttrrinngg'
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
# Write a method that doubles each character in a string

def repeater(string)
  string_array = string.chars
  new_string = ''
  string_array.map do |element|
    new_string << element * 2
  end
  new_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
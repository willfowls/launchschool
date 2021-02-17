# Write method that takes string argument
# Return a new string that has original value w staggered capitalization
# Characters that are not letters should not change

def staggered_case(string)
  string_array = string.chars
  new_string = []
  string_array.each_with_index do |element, index|
    if index.even?
      new_string << element.upcase
    elsif index.odd?
      new_string << element.downcase
    end
  end
  new_string.join
end
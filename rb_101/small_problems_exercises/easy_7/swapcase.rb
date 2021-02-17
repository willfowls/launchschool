# Write method that takes string arg
# Return new string where cases are swapped
# All other characters that aren't letters go unchanged
# No swapcase method allowed

UP = ('A'..'Z').to_a
DOWN = ('a'..'z').to_a

def swapcase(string)
  string_array = string.chars
  new_string = []
  string_array.each do |str|
    if UP.include?(str)
      new_string << str.downcase
    elsif DOWN.include?(str)
      new_string << str.upcase
    elsif str == ' '
      new_string << ' '
    elsif ('^a-z0-9').include?(str)
      new_string << str
    end
  end
  new_string.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
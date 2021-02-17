# Write method that takes string argument
# Return middle character of argument
# If argument has odd length, return 1 number
# If even length, return 2 numbers

def center_of(string)
  if string.size.odd?
    index1 = string.size / 2
  elsif string.size.even?
    index1 = string.size / 2
    index2 = (string.size / 2) - 1
  end

  new_string = []
  string_array = string.chars
  if string.size.odd?
    new_string << string_array[index1]
  elsif string.size.even?
    new_string << string_array[index2]
    new_string << string_array[index1]
  end
  new_string.join
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
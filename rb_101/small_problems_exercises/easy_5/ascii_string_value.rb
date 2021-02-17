# Write a method that outputs the ascii string value of a string arg
# ASCII string value is sum of all ascii values of every character in string
# You may use string#ord to determine ascii value


def ascii_value(str)
  b = str.chars.map do |v| v.ord
  end
  b.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
# Write a method that takes a string of digits, and returns the appropriate number as an integer.
# Do not worry about + or - signs
# Do not worry about invalid characters
# No use of standard conversion methods like to_i, Integer(), etc.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def strtoi(str)
  str.chars.map {|v| DIGITS[v] }

    value = 0
    digits.each {|digit| value = 10 * value + digit }
    value
end
# Do the same as string_to_integer.rb but do it for numbers that have + or - before them

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

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
endg
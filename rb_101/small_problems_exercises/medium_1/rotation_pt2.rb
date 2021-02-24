# Write a method that can rotate the last n digits of a number

def rotate_rightmost_digits(number, digits)
  number = number.to_s.chars
  last_number = ''
  last_number << number[number.size - digits]
  number[number.size - digits] = number.last
  number << last_number
  number.delete_at(number.size - (digits + 1))
  number.join
  final_number = 0
  number.each do |v|
    final_number = 10 * final_number + v.to_i
  end
  final_number
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
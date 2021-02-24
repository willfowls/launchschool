# Write a method that displays an 8 pointed star
# The star occurs on a n by n grid
# n is an odd integer specified by argument
# Only need to handle 7x7 grid

def star(number)
  counter = 0
  mid_spaces = number / 3
  loop do
    puts (' ' * counter) + '*' + (' ' * mid_spaces) + '*' + (' ' * mid_spaces) + '*'
    counter += 1
    mid_spaces -= 1
    break if counter >= number / 2
  end

  puts '*' * number

  counter = counter - 1
  mid_spaces = mid_spaces + 1
  loop do
    puts (' ' * counter) + '*' + (' ' * mid_spaces) + '*' + (' ' * mid_spaces) + '*'
    counter -= 1
    mid_spaces += 1
    break if counter == -1
  end
end

star(9)
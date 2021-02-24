# Write method that displays a 4 pointed diamond
# This occurs on n by n grid
# n is specified by an argument that is an odd integer
# Assume argument will always have odd integer

def diamond(number)

  counter = 1
  spaces = number
  loop do
    puts (' ' * (spaces / 2)) + ('*' * counter) + (' ' * (spaces / 2))
    counter += 2
    spaces -= 2
    break if counter > number
  end

  spaces = -spaces + 1
  counter = counter - 2
  loop do
    counter -= 2
    puts (' ' * (spaces / 2)) + ('*' * counter) + (' ' * (spaces / 2))
    spaces += 2
    break if counter == 1
  end
end

diamond(9)
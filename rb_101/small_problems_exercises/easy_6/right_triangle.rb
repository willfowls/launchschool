# Write method that takes positive integer argument
# Displays right triangle whose sides have n stars
# Hypotenus of triangle should have a side on bottom and a side on right

def triangle(number)
  counter = 0
  loop do
    counter += 1
    puts ' ' * (number - counter) + ('*'*counter)
    break if counter == number
  end
end

triangle(5)

#     *
#    **
#   ***
#  ****
# *****
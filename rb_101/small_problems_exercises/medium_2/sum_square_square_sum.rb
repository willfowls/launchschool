# Write method that accepts integer argument
# Compute the difference between
  # The square of the sum of integers 1 through integer argument
  # The sum of the squares of integers 1 through integer argument

  def sum_square_difference(number)
    array = (1..number).to_a
    squares = []
    array.each do |element|
      squares << element**2
    end
    difference = (array.sum**2) - squares.sum
  end
  
  p sum_square_difference(3) == 22
     # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
  p sum_square_difference(10) == 2640
  p sum_square_difference(1) == 0
  p sum_square_difference(100) == 25164150
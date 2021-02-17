# Write method that takes integer argument
# Return an array of integers between 1 and argument in order

def sequence(integer)
  (1..integer).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
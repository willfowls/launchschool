# Create method that takes two integer args
# First arg is a count
# Second arg is first number of a sequence
# Method should return array that contains same number of elements as count argument
# Values of each element will be multiples of starting number

def sequence(count, value)
  count_array = (1..count).to_a
  values_array = []
  count_array.map do |v|
    values_array << v * value
  end
  values_array
end

p sequence(0,10000000)
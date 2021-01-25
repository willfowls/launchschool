# What would you expect the following code to print?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# it's going to print numbers array because uniq is not a destructive method, while uniq! is

# CHECK
# The result of the following statement will give an error
# Why does the error occur and how can we fix it?

# puts "the value of 40 + 2 is " + (40 + 2)
# The error says no implicit conversion of integer into string
# This means that (40 + 2) is what's causing the error
# As the program is reading that we are trying to add a string to an integer, which is impossible
# How we could change the program is as follows

puts "The value of 40 + 2 is #{40 + 2}"

# we could just use string concatenation 
# or we could turn (40 + 2) to a string

puts "the value of 40 + 2 is " + (40 + 2).to_s

# CHECK
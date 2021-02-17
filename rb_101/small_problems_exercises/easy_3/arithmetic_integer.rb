
# Write code that asks for two positive integers
# Don't validate input
# Print the results of add, subtract, multiply, divide, remainder, and powers

puts 'enter your first number'
num = gets.chomp.to_i
puts 'enter your second number'
num1 = gets.chomp.to_i

add = num + num1
subtract = num - num1
multiply = num * num1
divide = num / num1
remainders = num % num1
powers = num ** num1

puts "adding #{num} and #{num1} equals #{add}"
puts "subtracting #{num} and #{num1} equals #{subtract}"
puts "multiplying #{num} and #{num1} equals #{multiply}"
puts "dividing #{num} and #{num1} equals #{divide}"
puts "the remainders of #{num} and #{num1} equals #{remainders}"
puts "the powers of #{num} and #{num1} equals #{powers}"
# Ask for a user's name
# Greet the user
# If user writes name! yell at them

puts "What is your name?"
name = gets.chomp
if name.end_with?('!')
  puts "WHY ARE WE YELLING #{name.upcase}?!"
else
  puts "Hello #{name}"
end
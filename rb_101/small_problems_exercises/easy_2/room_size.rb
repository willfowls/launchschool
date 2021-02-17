# Ask user for length and width of room
# Display area of room in square meters and square feet
# 1 sq meter == 10.7639 sq feet

puts "In meters, what is the length of the room?"
length = gets.chomp.to_i
puts "In meters, what is the width of the room?"
width = gets.chomp.to_i

square_meters = (length * width).round(2)
square_feet = (square_meters * 10.7639).round(2)

puts "The room is #{square_meters} square meters and #{square_feet} square feet."
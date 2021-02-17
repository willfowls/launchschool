# Create a tip calculator
# Prompt for bill amount
# Prompt for tip rate
# Compute the tip
# Display amount, tip, and total amount

puts "How much is the bill?"
bill = gets.chomp.to_i
puts "What percentage do you want to tip?"
tip = gets.chomp.to_i

total_amount = bill * ((tip * 0.01) + 1)
tip_total = bill * (tip * 0.01)

puts "Your initial bill is $#{bill}"
puts "With a tip rate of %#{tip}, your tip total is $#{tip_total}"
puts "Your total bill is $#{total_amount.round}"
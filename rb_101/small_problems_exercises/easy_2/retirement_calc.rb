# Ask user age
# Ask what age theyd like to retire
# Tell them when they will retire
# Tell them how many years they must work to get there

puts "What is your age?"
age = gets.chomp.to_i
puts "What age would you like to retire?"
retire = gets.chomp.to_i

current_year = Time.now.year
num_years = retire - age
ret_year = current_year + num_years

puts "You will retire in #{ret_year}."
puts "You must work #{num_years} years before retirement."
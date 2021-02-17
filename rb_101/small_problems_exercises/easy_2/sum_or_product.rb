# Ask the user for an integer greater than 0
# Ask the user if they'd like the sum or product between 1 and the integer

def sum(number)
  total = 0
  1.upto(number) {|v| total += v }
  total
end

def product(number)
  total = 1
  1.upto(number) {|v| total *= v}
  total
end

loop do
  num = ''
  operator = ''

  loop do
    puts "Please enter an integer greater than 0"
    num = gets.chomp.to_i
    if num <= 0
      puts "You must enter a number greater than 0"
    end
    if num > 0 
      break
    end
  end
  
  loop do 
    puts "Would you like to add or multiply the values between 1 and that number? Type 'a' for add and 'm' for multiply."
    operator = gets.chomp.downcase
    if operator.start_with?('a') || operator.start_with?('m')
      break
    else
      puts "You must type a or m to add or multiply."
    end
  end

  if operator == 'a'
    puts "Adding all values between 1 and #{num} gives you #{sum(num)}"
  else
    puts "Multiplying all values between 1 and #{num} gives you #{product(num)/10}"
  end

  break
end

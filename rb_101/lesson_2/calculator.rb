# Create a calculator program that:
# 1.) asks to give two numbers
# 2.) asks the type of operation to perform: add, subtract, multiply, or divide
# 3.) displays result
# Use Kernel.gets() to retrieve user input and Kernel.puts() to display output

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end

def number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(op)
  word =   case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           when '4'
             'Dividing'
           end
  word
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # Main loop
  n1 = ''
  loop do
    prompt(MESSAGES["first_number"])
    n1 = Kernel.gets().chomp()
    if number?(n1)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  n2 = ''
  loop do
    prompt(MESSAGES["second_number"])
    n2 = Kernel.gets().chomp()
    if number?(n2)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  prompt(MESSAGES['operator'])

  n3 = ''
  loop do
    n3 = Kernel.gets().chomp().downcase
    if %(1 2 3 4).include?(n3)
      break
    else
      prompt(MESSAGES['invalid_operator'])
    end
  end

  prompt("#{operation_to_message(n3)} the two numbers...")

  result = case n3
           when '1'
             n1.to_f() + n2.to_f()
           when '2'
             n1.to_f() - n2.to_f()
           when '3'
             n1.to_f() * n2.to_f()
           when '4'
             n1.to_f() / n2.to_f()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['another_calculation'])
  ans = Kernel.gets().chomp()
  break unless ans.downcase().start_with?('y')
end

prompt(MESSAGES['thanks'])

# SECOND GO AROUND BELOW

# Greet user
# Ask would you like to make a calculation? break if no
# If yes, okay, we will use two numbers
# Enter first number
# Validate number
# Continue asking if non valid number
# Enter second number
# Validate number
# Continue asking if non valid number
# Ask what operation they would like to perform
# Output result of operation they would like to perform
# Ask if they would like to make another calculation
# If yes, redo the situation. If no break.

def valid_number?(input)
  input.to_i.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

def float?(input)
  input.to_f.to_s == input
end

def operate
  "1 adds, 2 subtracts, 3 divides, 4 multiplies, 5 for remainder, 6 for powers"
end

puts "Welcome to our basic Calculator program!"
puts "We will be using two numbers for our calculation today."

loop do
  n1 = nil
  n2 = nil
  operator = nil

  loop do
    puts "Please enter your first number."
    n1 = gets.chomp
    if valid_number?(n1)
      break
    else
      puts "You must enter a valid number."
    end
  end

  loop do
    puts 'Please enter your second number.'
    n2 = gets.chomp
    if valid_number?(n2)
      break
    else
      puts 'You must enter a valid number.'
    end
  end

  loop do
    puts 'Which operation would you like to perform?'
    puts operate
    operator = gets.chomp.to_i
    if operator == 1
      puts "#{n1} plus #{n2} equals #{n1.to_i + n2.to_i}"
      break
    elsif operator == 2
      puts "#{n1} minus #{n2} equals #{n1.to_i - n2.to_i}"
      break
    elsif operator == 3
      puts "#{n1} times #{n2} equals #{n1.to_i * n2.to_i}"
      break
    elsif operator == 4
      puts "#{n1} divided by #{n2} equals #{n1.to_i / n2.to_i}"
      break
    elsif operator == 5
      puts "#{n1} divided by #{n2} gives a remainder of  #{n1.to_i % n2.to_i}"
      break
    elsif operator == 6
      puts "#{n1} powers of #{n2} equals #{n1.to_i**n2.to_i}"
      break
    else
      puts "You must enter 1, 2, 3, 4, 5, or 6 for a valid calculation."
    end
  end

  puts "Would you like to make another calculation? Type Y for yes or N for no."
  yorn = gets.chomp
  if yorn.downcase.start_with?('n')
    break
  elsif yorn.downcase.start_with?('y')
  else
    puts 'You must type Y for yes or N for no.'
  end
end

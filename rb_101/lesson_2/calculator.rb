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

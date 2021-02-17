# Create a mortgage loan calculator
# Obtain loan amount
# Obtain APR
# Obtain loan duration
# Calculate monthly interest rate
# Calculate loan duration in months
# Calculate monthly payment

# monthly_payment = loan_amount *
# (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

def prompt(message)
  Kernel.puts "=> #{message}"
end

prompt('Welcome to the Mortgage Loan Calculator!')

apr = ''
loan_amount = ''
monthly_interest_rate = ''
loan_duration = ''
ans = ''

loop do
  loop do
    prompt("What is your name?")
    name = Kernel.gets().chomp()
    if name.empty?
      prompt("You must enter a valid name.")
    else
      prompt("Hello #{name}!")
      break
    end
  end

  loop do
    prompt("What is the loan amount?")
    loan_amount = Kernel.gets().chomp().to_i
    if loan_amount <= 0
      prompt('Loan amount cannot be negative or zero. Must enter numbers.')
    else
      break
    end
  end

  apr = ''
  loop do
    prompt("What is the annual percentage rate?")
    apr = Kernel.gets().chomp().to_f() * 0.01
    if apr.to_f < 0
      prompt('Annual percentage rate cannot be negative.')
    else
      break
    end
  end
  monthly_interest_rate = apr / 12

  loop do
    prompt("What is the loan duration in years?")
    loan_duration = Kernel.gets().chomp().to_i * 12
    if loan_duration <= 0
      prompt("Loan duration can not be zero or negative.")
    else
      break
    end
  end

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

  prompt("Your monthly payment is #{monthly_payment.to_f}")

  prompt("Would you like to make another calculation?")
  ans = Kernel.gets().chomp()
  break unless ans.downcase().start_with?('y')
end

prompt("Thanks for using the Mortgage Loan Calculator!")
prompt("Goodbye!")

# SECOND GO AROUND BELOW

# Welcome user to Loan Calculator
  # Use method

# Ask if they would like to make a calculation
  # If yes, make calculation
  # If no, break
    # Use loop

# Ask what loan amount is
  # Validate it's not a string of letters
  # Validate it's positive number
  # If these two things check out
    # Break
  # Otherwise, keep asking
    # Use loop

# Ask what the APR is
  # Convert APR to MPR
  # Validate the APR is a positive number
    # If APR positive
      #Break
    # Otherwise, keep asking
      # Use loop

# Ask loan duration in years
  # Convert years to months
  # Make sure year is a positive value
    # If so, break
  # Otherwise, keep asking
    # Use loop

# Calculate monthly payment
  # Display message we are calculating it

# Output monthly formula with $ before number
# Make sure output is rounded to two decimal places

def prompt(msg)
  puts "=>#{msg}"
end

loan_duration = ''
loan_amount = ''
mpr = ''
monthly_payment = ''
calc = ''

prompt('Welcome to the Monthly Payment Loan Calculator!')
loop do
  loop do
    prompt('Would you like to make a calculation? Type Y for yes or N for no.')
    calc = gets.chomp.downcase
    break if calc.start_with?('y') || calc.start_with?('n')
    prompt('You must type Y for yes and N for no.')
  end
  break if calc.start_with?('n')
  loop do
    prompt('What is the loan amount?')
    loan_amount = gets.chomp.to_i
    break if loan_amount > 0
    prompt('You must enter a positive number.')
  end
  loop do
    prompt('What is the Annual Percentage Rate?')
    mpr = ((gets.chomp.to_f * 0.01) / 12)
    break if mpr.to_f >= 0
    prompt('You must enter a positive number.')
  end
  loop do
    prompt('How many years is the loan duration?')
    loan_duration = gets.chomp.to_i * 12
    break if loan_duration > 0
    prompt('You must enter a positive number.')
  end
  prompt('Calculating your monthly payment...')
  monthly_payment = loan_amount * (mpr / (1 - (1 + mpr)**(-loan_duration.to_i)))
  prompt("Your monthly payment is #{monthly_payment.round(2)}")
  prompt('Type N to end this program and any other key to restart.')
  yorn = gets.chomp.downcase
  break if yorn.start_with?('n')
end

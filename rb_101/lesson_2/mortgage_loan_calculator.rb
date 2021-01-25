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

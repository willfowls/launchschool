# Create a program that counts the number of items written and multiplies by 10
# Create a program that counts 2 percent of a number
# Create a program that compares the two values
# Tell which value is higher (item or percentage) based on the comparison

def prompt(message)
  puts message.to_s
end

loop do
  prompt("Welcome to the commission calculator!")
  gets.chomp
  ####################################
  prompt("How many items were written? (auto, home, renter policies)")
  items_written = gets.chomp.to_i
  items = items_written * 10

  #####################################
  prompt("How much premium was written?")
  premium_written = gets.chomp.to_i
  premium = premium_written * 0.02

  #####################################
  if premium > items
    prompt("Premium amount is greater. $#{premium} is greater than $#{items}")
  else
    prompt("Item amount is greater. $#{items} is greater than $#{premium}")
  end

  prompt("Would you like to make another calculation?")
  ans = gets.chomp
  break if ans != 'y'
end

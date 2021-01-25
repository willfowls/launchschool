# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicats

def printer(s, n)
  n.times do 
    puts s
  end
end

printer('willard',9)
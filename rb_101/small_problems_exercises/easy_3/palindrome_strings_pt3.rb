# Write a method returning true if its integer argument is a palindrome

def palindrome(str)
  str == str.reverse
end

def palindromic_number?(number)
  palindrome(number.to_s)
end

puts palindromic_number?(12321)
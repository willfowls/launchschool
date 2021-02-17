# Write a method that returns true if string passed as an argument is a palindrom
# If not, return false
# Case matters as does punctation and spaces

def palindrome?(string)
  string == string.reverse
end
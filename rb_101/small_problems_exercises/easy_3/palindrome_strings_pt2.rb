# Write a method that returns true if string passed as an argument is palindrome
# Method should be case insensitive
# Ignore all non alphanumerical characters

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
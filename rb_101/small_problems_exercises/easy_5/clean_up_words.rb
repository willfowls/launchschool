# Given a string of lowercased words and non alphabetic characters
# Write method that returns a string with only alphabetic characters
# Non alphabetic values replaced with a space
# If more than one non alphabetic values occur in a row, only one space

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  clean = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean << char
    else
      clean << ' ' unless clean.last == ' '
    end
  end

  clean.join
end
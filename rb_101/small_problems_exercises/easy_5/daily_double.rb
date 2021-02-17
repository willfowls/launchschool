# Write method that takes string argument
# Return a new string that contains value of original string with consecutive characters collapsed into single character
# squeeze or squeeze! is not allowed for this exercise

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end
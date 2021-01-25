#def dot_separated_ip_address?(input_string)
#  dot_separated_words = input_string.split(".")
#  while dot_separated_words.size > 0 do
#    word = dot_separated_words.pop
#    break unless is_an_ip_number?(word)
#  end
#  return true
#end

# We modified code above to actually work properly. NO CHECK

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
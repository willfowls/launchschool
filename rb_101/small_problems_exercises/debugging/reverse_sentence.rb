# Reverse sentence method should return new string with words in reverse order
# No reverse method allowed (built in method)
# Change code below so it behaves as expected

# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = words.length
  while i >= 0
    i -= 1
    reversed_words << words[i]
  end
  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
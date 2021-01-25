# Starting with string: 

famous_words = "seven years ago..."

# Show two different ways to put the expected "Four score and " in front of it

# famous_words.prepend('Four score and ') # first way

famous_words.insert(0, 'Four score and ') # second way

puts famous_words

# another way is "Four score and " << famous_words (which I tried i just had the order wrong)

# CHECK
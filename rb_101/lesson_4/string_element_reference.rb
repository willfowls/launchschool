# How could we access the word grass in this string?

string = 'The grass is green'
puts string[4..8]
puts string[4,5]
puts string.slice(4,5)

# CHECK EZ
# i picked the first way and like that best.
# if it ever became an issue where you were dealing with too long of a string, you could use the index method to find the word you wanted to stop at
# unless the word appeared twice, which i will learn a method for that situation sooner than later

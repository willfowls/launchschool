# Write a program that will ask a user for an input of a word or sentence
# Give back the number of characters. 
# Don't count spaces as characters

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
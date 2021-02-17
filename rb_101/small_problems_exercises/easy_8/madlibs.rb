# Create mad lib program that prompts for 
  # A noun
  # A verb
  # An adverb
  # An adjective
# Make a random story with the input

puts 'Please enter a noun:'
noun = gets.chomp.downcase
puts 'Please enter a verb:'
verb = gets.chomp.downcase
puts 'Please enter a adverb:'
adverb = gets.chomp.downcase
puts 'Please enter an adjective'
adjective = gets.chomp.downcase

sentence1 = "the #{noun} went down to the beach to #{adverb} #{verb} in the water. it was #{adjective}"
sentence2 = "#{noun} #{adverb} #{verb} in the road. they are so #{adjective}"
sentence3 = "the #{adjective} #{noun} #{adverb} #{verb}"

puts [sentence1, sentence2, sentence3].sample

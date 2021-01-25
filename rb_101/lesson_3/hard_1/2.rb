# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# CHECK
# informal_greeting being equal to greetings[:a] causes greetings to be mutated by << (destructive)

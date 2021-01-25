# Write a method that takes on argument, a string, and returns a new string with the words in reverse order

def method(a)
  a.split.reverse!.join(" ")
end

puts method('willard is chillard')
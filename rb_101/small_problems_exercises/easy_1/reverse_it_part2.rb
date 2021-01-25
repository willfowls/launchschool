# Write method that takes argument of string that has more than one word
# The argument returns the given string with words containing five or more characters reversed
# Each string will consist of only letters and spaces
# Spaces should be included only when more than one word is present

def method(a)
  w = []
  a.split.each do |v|
    v.reverse! if v.size >= 5
    w.push(v)
  end
  w.join(' ')
end

puts method('willard is chillard')
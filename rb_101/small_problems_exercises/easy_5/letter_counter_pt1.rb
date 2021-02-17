# Write method that takes a string with one or more space separated words
# Return a hash that shows the number of words of different sizes
# Words consist of any string of characters that do not include a space

def newhash(string)
  hsh = Hash.new(0)
  string.split.each do |v|
    hsh[v.size] += 1
  end
  p hsh
end

newhash('mye namee ise wille')
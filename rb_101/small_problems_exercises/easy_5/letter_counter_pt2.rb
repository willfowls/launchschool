# Modify method from letter_counter.rb and exclude non letters when determining word size

def newhash(string)
  hsh = Hash.new(0)
  string.split.each do |v|
    clean = v.delete('^A-Za-z')
    hsh[clean.size] += 1
  end
  p hsh
end

newhash('my......e n,,,amee ise wille')
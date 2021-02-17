# Will given method return the same string object that is given by argument?
# Hint: think of object id's with ord

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world")
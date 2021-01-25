# Programatically determine if 42 lies between 10 and 100

n = 42
if n.between?(10,100)
  puts "#{n} is between 10 and 100"
else
  puts "#{n} is not between 10 and 100"
end

# Got it but Launch School solution used cover? method on object. Their solution looks like:

(10..100).cover?(42)

# CHECK
# With the code below, what will it print?

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# # puts Date.civil
# -4712-01-01

# # puts Date.civil(2016)
# 2016-01-01

# # puts Date.civil(2016, 5)
# 2016-05-01

# # puts Date.civil(2016, 5, 13)
# 2016-05-13
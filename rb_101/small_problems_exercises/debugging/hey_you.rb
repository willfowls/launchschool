# Why isn't code below printing you as an uppercase?
# Fix

# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

def shout_out_to(name)
  puts 'HEY ' + name.upcase!
end

shout_out_to('you') # expected: 'HEY YOU'
# In the previous practice problem we added Dino to our array with <<
# CHECK
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
other = %w(Dino Hoppy)
flintstones.append(other)
flintstones.flatten!

# This is if we wanted to add the values at the same time
# We could also just use the push method from 6.rb repeated twice
# flintstones.push('Dino').push('Hoppy')

# or flintstones.concat(%w(Dino Hoppy))
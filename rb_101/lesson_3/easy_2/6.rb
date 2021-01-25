# How can we add the family pet 'Dino' to our usual array
# CHECK

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push('Dino')

# or

flintstones << 'Dino'

p flintstones

# Since we performed action twice Dino will show up twice at end of array
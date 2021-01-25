flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# if we create an array with this method, we will end up with a nested array
# un nest the array

flintstones.flatten!
p flintstones

# CHECK
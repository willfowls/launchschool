flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# CHECK
# Given this hash, turn it to an array with only Barney's name and Barney's number

# p flintstones.assoc("Barney") # one way

# flintstones.select {|k, v| v == 2} 
# p flintstones.flatten         # another way

# p flintstones.rassoc(2)  # another way

# given way of launch school was
p flintstones.assoc('Barney')
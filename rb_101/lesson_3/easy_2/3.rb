ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# We have most of the monsters in our hash
# Add ages for Marilyn and Spot in the existing hash
# CHECK

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages
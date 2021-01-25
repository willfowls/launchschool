ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if spot is present in this hash

ages.include?('spot') # one way; returns boolean

ages.has_key?('spot') # another way; returns boolean

ages.key?('spot') # another way; returns boolean

ages.member?('spot') # another way

# CHECK
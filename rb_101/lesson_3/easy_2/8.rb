advice = "Few things in life are as important as house training your pet dinosaur."
# Shorten this sentence
# Remove everything starting from house

advice.slice!(0..38)  #use string method index to find beginning index of word house
p advice
# CHECK
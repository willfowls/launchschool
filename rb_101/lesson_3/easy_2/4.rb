# See if the name 'Dino' apperas in the string
# CHECK

advice = "Few things in life are as important as house training your pet dinosaur."

if advice.include?('dino')
  puts "Dino is included"
else
  puts 'Dino is excluded'
end

# or like line 13 to return raw boolean 

p advice.include?('dino')

# or like launch school way

advice.match('dino')
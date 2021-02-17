# You have bank of switches, numbered from 1 to a number specified by someone else.
# Each switch has a number and is connected to one light that is initially off.
# You walk down the row of switches and turn on every one.
# The second time you walk down row and you change every 2nd, 4th, and 6th switch
# The third time you walk down row and you change every 3rd, 6th, and 9th switch
# The fourth time you walk down row and you change every 4th, 8th, and 12th switch
# Essentially:
# Number of times you've walked row must divide evenly with switch number for switch to be turned 'on' or 'off'
# Repeat process until you reach number specified in argument
# Write method that takes one argument, total number of switches. 
# Return an array that identifies which light numbers are on after that number of repititions.
def toggle_lights(number)
  switches = (1..number).to_a
  lights_hash = Hash.new(0)
  switches.each do |value|
    lights_hash[value] = 'off'
  end
  lights_hash
  
  counter = 1
  loop do
    lights_hash.each_pair do |key, value|
      if key % counter == 0 && value == 'off'
        value.delete!('off')
        value << 'on'
      elsif key % counter == 0 && value == 'on'
        value.delete!('on')
        value << 'off'
      end
    end
    counter += 1
    break if counter > number
  end
  lights_on = []
  lights_hash.each_pair do |key, value|
    lights_on << key if value == 'on'
  end 
  lights_on
end
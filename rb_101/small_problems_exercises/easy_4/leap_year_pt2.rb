# Write method that takes a year greater than 0
# Return true if the year is a leap year else false
# Leap years occur in years divisible by 4
# Leap years divisible by 100 are not leap years unless they're divisble by 400
# Years before 1752 that are evenly divisible by only 4 count as leap years (no 100 year requirement for before this time)

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

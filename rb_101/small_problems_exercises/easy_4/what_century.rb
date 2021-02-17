# Write method that takes year as input
# Return century of that year (ex: 23rd century)

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# # Examples:
century(2000) == '20th' --> true
century(2001) == '21st' --> true
century(1965) == '20th' --> true
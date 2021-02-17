# Write a method that takes string argument
# Return hash that contains 3 entries
  # Percentage of uppercase characters
  # Percentage of lowercase characters
  # Percentage of characters that are neither
# Assume string always has at least one character

def letter_percentages(string)
  case_count = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |element|
    if ('a'..'z').to_a.include?(element)
      case_count[:lowercase] += 1
    elsif ('A'..'Z').to_a.include?(element)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  
  time_to_divide = [case_count[:lowercase], case_count[:uppercase], case_count[:neither]]
  time_to_divide.map! do |element|
    element = (element / string.size.to_f)
    format('%.3f', element)
    element * 100
  end
  time_to_divide.map! do |element|
    if element.to_s.end_with?('.0')
      element.to_s.delete_suffix!('.0').to_i
    elsif !element.to_s.end_with?('.0')
      element = element
    end
  end
  lettercase_percentage = { lowercase: time_to_divide[0], uppercase: time_to_divide[1], neither: time_to_divide[2]}
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
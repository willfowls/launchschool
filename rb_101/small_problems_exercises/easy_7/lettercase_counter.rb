# Write method that takes string
# Return hash with 3 entries
  # Count of lowercase letters
  # Count of uppercase letters
  # Count of neither

  UP = ('A'..'Z').to_a
  DOWN = ('a'..'z').to_a
  
  def letter_case_count(string)
    string_array = string.chars
    letter_count_hash = {}
    letter_count_hash[:uppercase] = 0
    letter_count_hash[:lowercase] = 0
    letter_count_hash[:neither] = 0
  
    string_array.each do |element|
      if UP.include?(element)
        letter_count_hash[:uppercase] += 1
      elsif DOWN.include?(element)
        letter_count_hash[:lowercase] += 1
      else
        letter_count_hash[:neither] += 1
      end
    end
    letter_count_hash
  end
  
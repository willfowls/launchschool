# Write method that determines mean of three score arguments
# Return the letter grade associated with the average
# Disregard plus and minus grades only A,B,etc

def get_grade(score1, score2, score3)
  grade = (score1 + score2 + score3) / 3
  letter_grade = ''
  if grade.between?(90, 100)
    letter_grade << 'A'
  elsif grade.between?(80,90)
    letter_grade << 'B'
  elsif grade.between?(70,80)
    letter_grade << 'C'
  elsif grade.between?(60,70)
    letter_grade << 'D'
  else
    letter_grade << 'F'
  end
  letter_grade
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)
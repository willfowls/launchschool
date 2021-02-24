# A triangle based on angles is:
  # Right triangle if one angle is 90 degrees
  # Acute triangle if all angles are less than 90 degrees
  # Obtuse triangle if one angle is greater than 90 degrees
# Valid triangles:
  # Include angles greater than 0
  # Sum of all angles equals 180
# Write method that takes three angle arguments
# Return symbol of which type triangle
# Assume integer value angles, no float numbers
# Assume arguments are specified in degrees

def triangle(angle1, angle2, angle3)
  triangle = [angle1, angle2, angle3]
  return :invalid if triangle.sum != 180 || triangle.count(0) > 0
  return :acute if angle1 < 90 && angle2 < 90 && angle3 < 90
  return :right if angle1 == 90 || angle2 == 90 || angle3 == 90
  return :obtuse if angle1 > 90 || angle2 > 90 || angle3 > 90
end

p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
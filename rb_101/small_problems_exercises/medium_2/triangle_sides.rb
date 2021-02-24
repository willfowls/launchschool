# Equilateral triangle has 3 equal sides
# Isosceles triangle has 2 sides of equal length with 3rd different
# Scalene has all 3 sides of different length
# Invalid triangles have a side of 0
# Invalid triangles have two sides that don't equal or surpass the largest side
# Write a method that takes 3 sides and determines class of triangle

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  if sides.count(0) >= 1 || side1 + side2 < side3 || side2 + side3 < side1 || side1 + side3 < side2
    return :invalid
  elsif side1 == side2 && side1 == side3 && side2 == side3
    return :equilateral
  elsif sides.count(side1) == 2 || sides.count(side2) == 2
    return :isosceles
  elsif side1 != side2 && side1 != side3 && side2 != side3
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
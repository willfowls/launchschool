# def my_method(array)
#   if array.empty?
#     []
#   elsif
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# The code above is expected to output:
#[]
#[21]
#[9,16]
#[25,36,49]

# There is a bug in the program that is causing unexpected return value.
# Fix the bug and describe it


def my_method(array)
  if array.empty?
    []
  elsif array.size == 1
    [7 * array.first]
  else
    array.map do |value|
      value * value
    end
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

#The code is attempting to multiply an integer by 7 if it is the only element in the array argument. 
#If the array is empty, then return the empty array. If the array has more than one element, return each element squared. 
#Right away I noticed that elsif was not given a conditional to evaluate. 
#This would explain why the initial output of the code was returning [], nil, nil, nil. The first part of the if statement is working fine. 
#How I resolved the issue was by giving a conditional for the elsif statement to evaluate. 
#That condition being that if the array has only one element, it will multiply the element by 7. 
#When if and the elsif evaluate to false, else is executed and squares each element of the multi-element array.
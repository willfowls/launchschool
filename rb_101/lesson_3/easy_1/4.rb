# The ruby array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ

numbers = [1, 2, 3, 4, 5]

# What do the following functions do?
# Line 9 deletes at an index, will delete the 2 value. Line 10 will delete 0 index value 1.

numbers.delete_at(1)
numbers.delete(1)

# CHECK
# Describe the difference between ! and ? in Ruby.
# Explain what would happen in following scenarios

# 1. What is != and where should you use it?
# != is a way of saying not equal instead of equal.
# for example, 2 != 3; two is not equal to three; true statement
# if we did 2 = 3 that would be a false statement
# use != when you are making a comparison to something not equal to that value

# 2.) Put ! before something like, !user_name
# ternary operator for if..else

# 3.) What about when we put ! after something like words.uniq!
# when we use ! in this specific use case, this means we are mutating the caller
# this is considered a destructive method as it permanently changes the caller

# 4.) puts ? before something
# Not 100% but pretty sure this will simply give an error message

# 5.) puts ? after something
# We are asking whether the item is true or false in a method
# Otherwise it will issue an error

# 6.) put !! before something like user_name
# This is going to return a true value

# CHECK
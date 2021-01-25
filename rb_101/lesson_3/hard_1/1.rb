# What happens when greeting variable is referenced in the last line of code?

if false
  greeting = "hello world"
end

greeting

# CHECK # returns nil
# When you initialize a local variable in an if block, even if that block doesn't get executed
# the local variable is initialized to nil when false
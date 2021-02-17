# Write method taking array and hash argument
# Array contains first name and last name elements
# Hash will contains keys :title and :occupation with values assigned
# Method should return greeting using first namd and mentions their title and occupation

def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end
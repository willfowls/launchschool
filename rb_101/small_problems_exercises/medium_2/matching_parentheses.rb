# Write method that takes string argument
# Return true if all parentheses in string are proper, false otherwise

def balanced?(string)
  string = string.chars
  parens = []
  string.each do |char|
    parens << char if char == '(' || char == ')'
  end
  if parens.first == ')'
    return false
  elsif parens.last == '('
    return false
  elsif parens.size.odd?
    return false
  else
    return true
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
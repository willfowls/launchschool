# Write method taking arary of strings
# Return array of same string vals with vowels removed

def remove_vowels(arr)
  n = []
  arr.each do |v|
    n << v.delete('aeiouAEIOU')
  end
  n
end
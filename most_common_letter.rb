# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  max_count = 0
  max_letter = ""
  string_arr = string.split("")
  string_arr.each do |c|
    if string_arr.count(c) > max_count
      max_count = string_arr.count(c)
      max_letter = c
    end
  end
  return [max_letter, max_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
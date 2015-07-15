# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
  (0...nums.length - 1).each do |i|
    (i + 1...nums.length).each do |j|
      if nums[i] + nums[j] == 0
        return [i, j]
      end
    end
  end
  return nil
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s)
puts('two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s)
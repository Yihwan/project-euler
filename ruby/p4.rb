# Largest palindrome product
# Problem 4

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(digits)
  start_range = 10 ** (digits - 1)
  end_range = ""
  digits.times { end_range << "9" }

  (start_range ** 2..end_range.to_i ** 2).to_a.reverse.each do |num|
    return num if num.to_s.chars == num.to_s.chars.reverse
  end
end

# Multiples of 3 and 5
# Problem 1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_or_5_sum(max)
  array_of_multiples = Array.new
  (1...max).each { |num| array_of_multiples.push(num) if num % 3 == 0 || num % 5 == 0 }
  array_of_multiples.reduce(:+)
end

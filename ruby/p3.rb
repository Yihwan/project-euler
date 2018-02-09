# Largest prime factor
# Problem 3

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime_factor(num)
  factors(num).reverse.each { |div| return div if Prime.prime?(div) }
end

def factors(num)
  lower_factors = (2...Math.sqrt(num).ceil).select { |div| num % div == 0 }
  upper_factors = lower_factors.map { |div| num / div }
  all_factors = (lower_factors + upper_factors).uniq.sort
end

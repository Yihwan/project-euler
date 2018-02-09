# Largest prime factor
# Problem 3

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime_factor(num)
  puts "Start time: #{Time.now}"
  answer = prime_factors(num).last
  puts "End time: #{Time.now}"

  answer
end

def prime_factors(num)
  prime_factors = Array.new

  Prime.each do |prime|
    break if prime > num
    prime_factors.push(prime) if num % prime == 0
  end

  prime_factors
end

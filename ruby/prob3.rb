=begin
prob 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end




def is_prime?(n)
  return nil if n == 0 || n == 1
  return true if n == 2
  return false if n % 2 == 0
  return true if n == 5
  return false if n % 5 == 0
  (2..Math.sqrt(n)).each { |x|
    return false if n % x == 0
  }
  return true
end


def prime_factor(number)
  primes = []
  pfs = []
  i = 2
  Math.sqrt(number).ceil.times do
    primes << i if is_prime?(i)
    i += 1
  end
  primes.each { |x| pfs << x if number % x == 0 }
  pfs[-1]
end

#answer = 6857

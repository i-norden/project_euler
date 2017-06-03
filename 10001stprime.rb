=begin
#7
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end


def is_prime?(n)
  return nil if n == 0
  array = []
  i = 2
  (n-2).times do
    array << i
    i += 1
  end
  array.each { |x|
    return false if n % x == 0
  }
  return true
end


def find_prime(n)
  primes = []
  i = 2
  until primes.length == n do
    primes << i if is_prime?(i)
    i += 1
  end
  primes[-1]
end

# answer =

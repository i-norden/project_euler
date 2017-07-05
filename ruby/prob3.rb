=begin
prob 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end


def is_prime?(n)
  if n == 0
    return nil
  end
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




def prime_factor(number)
  primes = []
  lpfs = []
  i = 2
  (number-2).times do
    primes << i if is_prime?(i)
    i += 1
  end
  primes.each { |x|
    if number % x == 0
      lpfs << x
    end
  }
  lpfs
end

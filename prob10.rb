=begin
#10
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
17 + 11 + 13 + 17 + 19
Find the sum of all the primes below two million.

=end



def is_prime?(n)
  return nil if n == 0 || n == 1
  return true if n == 2
  return false if n % 2 == 0 || n % 3 == 0
  return true if n == 5
  return false if n % 5 == 0
  (7..Math.sqrt(n).ceil).each do |x|
    return false if n % x == 0
  end
  return true
end




def sum_primes(n)
  primes = [2,3,5]
  (7..(n-1)).step(2) do |x|
    if is_prime?(x)
      primes << x
    end
  end
  print primes
  primes.inject(:+)
end

#answer = 142913828922
=begin

benchmarking method to compare efficiency:

require 'benchmark'

puts Benchmark.measure { sum_of_all_primes(100000)}

=end





require 'prime'
def sum(range)
  Prime.each(range).inject(:+)
end

#answer = 142913828922

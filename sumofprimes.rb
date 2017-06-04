=begin
#10
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
17 + 11 + 13 + 17 + 19
Find the sum of all the primes below two million.

=end



def is_prime?(n)
  return nil if n == 0 || n == 1
  #return false if n % 2 == 0
  return true if n == 5
  return false if n % 5 == 0
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


def sum_of_all_primes(n)
  i = 1
  primes = [2]
  (n / 2).times do
    primes << i if is_prime?(i)
    i += 2
  end
  sum = primes.inject(0, :+)
end

#this took forever to find with this method: answer =

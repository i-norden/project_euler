=begin

Factorial digit sum
Problem 20

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

=end

def factorial(x)
  return x if x == 0
  i = 1
  total = 1
  while i <= x
    total = total * i
    i += 1
  end
  return total
end


def fact_sum(x)
  fact = factorial(x)
  sum = fact.to_s.split("").map {|x| x.to_i}.inject(:+)
end

#answer = 648

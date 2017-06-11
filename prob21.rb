=begin

Amicable numbers
Problem 21

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def sum_divs(x)
  i = 0
  divs = []
  Math.sqrt(x).ceil.times do
    i += 1
    j = x / i
    divs << i if x % i == 0 && divs.include?(i) == false
    divs << j if x % i == 0 && divs.include?(j) == false && j != x
  end
  sum = divs.inject(:+)
end


def ami(x)
  i = 1
  amis = []
  x.times do
    if i == sum_divs(sum_divs(i)) && i != sum_divs(i)
      amis << i
      puts i
    end
    i += 1
  end
  amis.inject(:+)
end

#answer = 31626

=begin

Non-abundant sums
Problem 23

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28,
which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24.
By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers.
However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

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

def abn_num?(x)
  return false if x == 2
  return true if sum_divs(x) > x
  return false
end


def sum
  abn_nums = []
  (1..28123).each {|x|
    abn_nums << x if abn_num?(x)
  }
  uniques = abn_nums.uniq
  abn_sums = []
  sums = []
  i = 0
  (uniques.length - i).times do
    j = i
    (uniques.length - j).times do
      sums << uniques[i] + uniques[j]
      j += 1
    end
    i += 1
  end
  sums.uniq!.each {|x|
    abn_sums << x if x <= 28123
  }
  abn_sums
  sum = []
  (1..28123).each { |x|
    sum << x if abn_sums.include?(x) == false
  }
  sum.inject(:+)
end

#answer = 4179871

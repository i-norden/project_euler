=begin

Digit fifth powers
Problem 30

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

    1634 = 14 + 64 + 34 + 44
    8208 = 84 + 24 + 04 + 84
    9474 = 94 + 44 + 74 + 44

As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

=end

=begin

let x = the number of digits of the numbers in question
let n = power to raise to
let y = the maximum value obtainable by summing the digits^power of a x digit number
let q = the number of digits in y
if q < y then we have passed our upper bound
i.e. for x = 6, n = 5: y = 354294, q = 6; q >= x
for x = 7, n = 5: y = 413343, q = 6; q < x therefore the numbers in question must be smaller than 7 digits (actually must be smaller than 413343, and could be refined further)
so lets just check everything below 7 digits


=end

def find_em(power)
  arr = (1..413343).to_a
  sums_of_powers = arr.map(&:to_s).map { |x| x.split('') }.map {|x| x.map { |x| x.to_i**power }.inject(:+) }
  answ = []
  arr.each_with_index { |x, i| answ << x if x == sums_of_powers[i] }
  answ.reject { |x| x == 1 }.inject(:+)
end

#answer = 443839

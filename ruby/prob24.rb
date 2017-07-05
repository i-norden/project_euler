=begin

Lexicographic permutations
Problem 24

A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

10! ways to arrange 0-9
=end

def lexi(*args)
  digits = Array.new
  args.each { |x|
    digits << x
  }
  n = digits.length
  perms = digits.permutation(n).to_a
  perms2 = []
  perms.each {|x|
    perms2 << x.join("").to_i
  }
  perms2.sort!
  return perms2[999_999]
end

#answer = 2783915460, slow since you generate all permutations


#try a brute force method where you generate permutations incrementally until 1 millionth is reached



def lexi(*args)
  digits = Array.new
  args.each { |x|
    digits << x
  }
  n = digits.length
  perms = Array.new
  i = 0
  n.times do
    perm = Array.new(n, 0)
    perm[0] = digits[i]
    j = 1
    i = j
    (n - j).times do
      perm[j] = digits[i]
      i += 1
    end
    i += 1
    perms << perm
  end
  perms
end


#try a clever method that uses what we know about permutations
=begin
i.e.
we want 1 millionth lexi permutation
first 9! (up to 362880) permutatiosn start with 0
next 9! (362881 - 725760) will start with 1
next 9! (725761 - 1088640) will start with 2 => we know ours will start with 2

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

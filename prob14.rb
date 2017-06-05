=begin Longest Collatz sequence
Problem 14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end
def collatz(n)
arr = []
until n == 1
  if n % 2 == 0
    arr << n = n / 2
  else
    arr << n = (3 * n) + 1
  end
end
return arr.length
end

def longest_under(n)
i = 1
collatz_length = []
(n-1).times do
  collatz_length << collatz(i)
  i += 1
end
puts collatz_length.max # answer = 524
puts ""
puts index = collatz_length.index(collatz_length.max) + 1 # answer = 837799
end

#this one didn't take very long for the computer to solve

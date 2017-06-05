=begin

The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

     1: 1
     3: 1,3
     6: 1,2,3,6
    10: 1,2,5,10
    15: 1,3,5,15
    21: 1,3,7,21
    28: 1,2,4,7,14,28

We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?

=end



def tri_divs(n)
i = 1
match = false
tri_num = 0
until match == true do
  tri_num = triangle_number(i)
  divisors = []
  j = 1
  tri_num.times do
    divisors << j if tri_num % j == 0
    j += 1
    print divisors
  end
  match = true if divisors.length > n
  puts tri_num if divisors.length > n
  puts i if divisors.length > n
  i += 1
end
end



def triangle_number(x)
  return x if x == 0
  i = 1
  total = 0
  while i <= x
    total = total + i
    i += 1
  end
  return total
end

#answer =

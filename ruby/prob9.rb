=begin
#9
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end


def pyth()
a = 1
b = 1
c = 1
until a + b + c == 1000 && a**2 + b**2 == c**2 do
  c = rand(1..500)
  b = rand(1..c)
  a = rand(1..b)
end
puts a
puts b
puts c
puts a * b * c
end

#answer = 31875000

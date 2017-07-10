=begin

Quadratic primes
Problem 27

Euler discovered the remarkable quadratic formula:

n2+n+41

It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39
. However, when n=40,402+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,412+41+41

is clearly divisible by 41.

The incredible formula n2−79n+1601
was discovered, which produces 80 primes for the consecutive values 0≤n≤79

. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

    n2+an+b

, where |a|<1000 and |b|≤1000

where |n|
is the modulus/absolute value of n
e.g. |11|=11 and |−4|=4

Find the product of the coefficients, a
and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n=0.

=end


def quad(max)
  a = 0
  b = 0
  i = -max
  arr = []
  ((max * 2) + 1).times do
    arr << i
    i += 1
  end
  perms = arr.permutation(2).to_a
  output = 0
  which = []
  perms.each { |a, b|
    n = 0
    output = (n**2) + (a * n) + b
    until is_prime?(output) == false
      n += 1
      output = (n**2) + (a * n) + b
    end
    which << [n, a, b]
  }
  max = which.max_by(&:first)
  max.shift
  max.inject(:*)
  # which.max { |a,b| a.max <=> b.max }
end




def is_prime?(n)
  return false if n <= 1
  return true if n == 2
  return false if n % 2 == 0
  return true if n == 5
  return false if n % 5 == 0
  (2..Math.sqrt(n)).each { |x|
    return false if n % x == 0
  }
  return true
end

#answer = -59231 (71, -61, 971)


#

def quad(max)
  a = 0
  b = 0
  i = -max
  arr = []
  ((max*2)+1).times do
    arr << i
    i += 1
  end
  perms = arr.permutation(2).to_a
  print perms
  output = 0
  which = []
  perms.each { |a, b|
    n = 0
    output = (n**2) + (a * n) + b
    until is_prime?(output) == false
      n += 1
      output = (n**2) + (a * n) + b
    end
    which << [n, a, b]
  }
  print which
  which.max_by { |a| a.max }
end

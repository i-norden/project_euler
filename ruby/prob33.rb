=begin

Digit cancelling fractions
Problem 33

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.


=end


def foo(decimal) #enter number of digits the num and denom can have
  num = []
  dem = []
  i = 9
  ((10**decimal)-10).times do
    i += 1
    num << i
    dem << i
  end
  i = 0
  fractions = []
  until i == num.length
    j = i
    until j == dem.length
      fractions << [num[i].to_s, dem[j].to_s] if num[i] < dem[j]
      j += 1
    end
    i += 1
  end
  match = []
  fractions.each { |x, y|
    ysplit = y.split("")
    match << [x, y] if x.split("").include?(ysplit[0] || ysplit[1])
    }
  divs1 = []
  divs2 = []
  i = 0
  match.each { |x, y|
    ysplit = y.split("")
    xsplit = x.split("")
    divs1 << [xsplit[1], ysplit[1], i] if xsplit[0] == ysplit[0]
    divs1 << [xsplit[1], ysplit[0], i] if xsplit[0] == ysplit[1]
    divs1 << [xsplit[0], ysplit[1], i] if xsplit[1] == ysplit[0]
    divs1 << [xsplit[0], ysplit[0], i] if xsplit[1] == ysplit[1]
    i += 1
  }
  answ = []
  match.each { |x, y| divs2 << x.to_f / y.to_f }
  divs1.map! { |x, y, i| [x.to_f / y.to_f, i] }.uniq.each { |d, i| answ << match[i] if d == divs2[i] }
  numer = 1
  denom = 1
  answ.each { |x, y|
    numer *= x.to_i
    denom *= y.to_i
  }
  puts numer.to_s + "/" + denom.to_s
  puts (numer.to_r/denom.to_r).to_r
  print answ
end

#answer = 100

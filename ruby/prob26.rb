=begin

Reciprocal cycles
Problem 26

A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

    1/2	= 	0.5
    1/3	= 	0.(3)
    1/4	= 	0.25
    1/5	= 	0.2
    1/6	= 	0.1(6)
    1/7	= 	0.(142857)
    1/8	= 	0.125
    1/9	= 	0.(1)
    1/10	= 	0.1

Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

=end


def deci_array(n)
  i = 0
  ds = Array.new(n, 0)
  n.times do
    i += 1
    ds[i - 1] = (1 / i.to_f).to_s
  end
  numbers = Array.new
  ds.each { |x|
    digits = Array.new
    digits = x.split("")
    digits = digits[(digits.index(".") + 1)..-1]
    numbers << digits
  }
  numbers
end

def repc(n)
  arr = deci_array(n)
  arr.each do

  end

end

numbers = Array.new
ds.each { |x|
  digits = Array.new
  digits = x.split("")
  numbers << digits
}

  find_index(".")

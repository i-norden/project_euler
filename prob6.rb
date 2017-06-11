=begin
problem 6

The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end


#use this method to enter numbers individually

def sum_of_squares(*args)
  array = []
  args.each { |x| array << x }
  sum = array.map { |x| x = x**2 }.inject(0, :+)
end


def square_of_sum(*args)
  array = []
  args.each { |x| array << x }
  square_of_sum = array.inject(0, :+)**2
end


#use this method to enter top of incremental range of numbers to use

def sum_of_squares(n)
  array = []
  i = 1
  n.times do
    array << i
    i += 1
  end
  sum = array.map { |x| x = x**2 }.inject(0, :+)
end


def square_of_sum(n)
  array = []
  i = 1
  n.times do
    array << i
    i += 1
  end
  square_of_sum = array.inject(0, :+)**2
end


#finds difference

def diff(n)
sum_of_squares(n) - square_of_sum(n)
end

#answer = -25164150

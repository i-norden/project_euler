=begin
problem 1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

=end


def arrayFunction(number, multiple1, multiple2)
  array = []
  i = 0
  number.times do
    i += 1
    array << i if i % multiple1 == 0 || i % multiple2 == 0
  end
  total = array.inject(0, :+)
return total
end

arrayFunction(1000, 3, 5)

#answer = 234168

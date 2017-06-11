=begin
problem 5
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end







def smallest_multiple(*args)
  i = 1
  until args.all? { |x| i % x == 0 }
    i += 1
  end
  return i
end





def smallest_multiple(*args)
  array = []
  i = 1
  args.each { |x| array << x }
  def divisible?(n, array)
    array.all? { |x| n % x == 0 }
  end
  until divisible?(i, array)
    i += 1
  end
  return i
end

#answer is 232792560

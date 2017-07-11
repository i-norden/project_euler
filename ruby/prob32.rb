=begin

Pandigital products
Problem 32

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

=end


=begin

What we know:
A x B = C where digits 1 through 9 are used exactly once.

e.g. _ x _ _ _ _ _ _ _ = _

total number of digits is 9

C must have 4 digits

B and A have 5 total

only possiblities: _ x _ _ _ _ = _ _ _ _ or _ _ x _ _ _ = _ _ _ _

possible to test all possible permutations ? (9!/(9-5)!) = 15120 permutations, so yes, let's do that


=end



#Find digits for all  _ _ x _ _ _ = _ _ _ _ permutations and all _ x _ _ _ _ = _ _ _ _ permutations, throw out anything with more than 9 digits total, anything with 0s in it, and anything with duplicates, then sum

  def find_sum()
    permutations = (1..9).to_a.permutation(5).map(&:join)
    sum = permutations.map { |x| "#{x}" + "#{x.slice(0..1).to_i * x.slice(2..4).to_i}"}.map { |x| x.split('')}.reject { |x| x.length > 9 }.reject { |x| x.include? ('0') }.reject { |x| x.uniq.length != x.length }.map { |x| x.join('').slice(-4..-1).to_i }.uniq.inject(:+)
    sum += permutations.map { |x| "#{x}" + "#{x[0].to_i * x.slice(1..4).to_i}"}.map { |x| x.split('')}.reject { |x| x.length > 9 }.reject { |x| x.include? ('0') }.reject { |x| x.uniq.length != x.length }.map { |x| x.join('').slice(-4..-1).to_i }.uniq.inject(:+)
  end

#below technically one line solution :)

(1..9).to_a.permutation(5).map(&:join).map{|x|"#{x}"+"#{x.slice(0..1).to_i*x.slice(2..4).to_i}"}.map{|x|x.split('')}.reject{|x|x.length>9}.reject{|x|x.include?('0')}.reject{|x|x.uniq.length=x.length}.map{|x|x.join('').slice(-4..-1).to_i}.uniq.inject(:+)+(1..9).to_a.permutation(5).map(&:join).map{|x|"#{x}"+"#{x[0].to_i*x.slice(1..4).to_i}"}.map{|x|x.split('')}.reject{|x|x.length>9}.reject{|x|x.include?('0')}.reject{|x|x.uniq.length!=x.length}.map{|x|x.join('').slice(-4..-1).to_i}.uniq.inject(:+)
#answer = 45228



=begin Begun a less concise way:


def find_product()
  permutations = (1..9).to_a.permutation(5).map(&:join) #shorthand for (1..9).to_a.permutation(5).map { |x| x.join ('') }.map { |x| x.to_i }
  i = 0
  combined = Array.new(permutations.length, 0)
  permutations.length.times do
    combined[i] = "#{permutations[i]}" + "#{permutations[i].slice(0..1).to_i * permutations[i].slice(2..4).to_i}" #permutations[0].slice(0..1).to_i * permutations[0].slice(2..4).to_i
    i += 1
  end
  combined.map! { |x| x.split("") }
end

=end

=begin Some fun with brute force:

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

def find_it()
  i = 0
  number = factorial(9) / factorial(9-5)
  set = Array.new(number, 0)
  while set.include? (0)
    arr = Array.new(5, 1)
    j = 0
    arr.length.times do
      x = rand(9)
      while arr.include?(x)
        x = rand(9)
      end
      arr[i] = rand(9)
      j += 1
    end
    join = arr.join('')
    if set.include? (join) == false
      set[i] = join
      i += 1
    end
  end
  print set
end
=end





  #(1..9).to_a.permutation(5).to_a

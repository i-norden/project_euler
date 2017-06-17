=begin

Coin sums
Problem 31

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

It is possible to make £2 in the following way:

    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

How many different ways can £2 be made using any number of coins?

=end

def coinsum(base_unit, target, *mults)
  coins = [base_unit] + mults

  count = 1 +
end

#brute force!!!!

def coinsum(base_unit, target, it, *mults)
  coins = [base_unit] + mults
  paths = []
  it.times do
    path = []
    x = 0
    until x >= target
      a = rand(0..(coins.length - 1))
      x += coins[a]
      path << coins[a]
    end
    paths << path.sort if path.inject(:+) == target
  end
  print paths.uniq
  count = 1 + paths.uniq.length
end


2716

23801

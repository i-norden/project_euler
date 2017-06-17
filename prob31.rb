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
      rando = rand(0..(coins.length - 1))
      if rando < 2
        a = rand(0..1)
      elsif rando < 4
        a = rand(0..3)
      elsif rando < 6
        a = rand(0..5)
      else
        a = rand(0..(coins.length - 1))
      end
      x += coins[a]
      path << coins[a]
    end
    path.sort!
    paths << path if path.inject(:+) == target
  end
  print paths.uniq
  count = 1 + paths.uniq.length
end

until uniq == false

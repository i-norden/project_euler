=begin

Number spiral diagonals
Problem 28

Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.

What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

=end
#this method only works if u have the grid already meade and ready to enter
def spiral(input)
  grid = input.split(" ").map { |x| x.to_i }
  len = grid.length
  rows = Math.sqrt(len)
  num_diags = ((rows*2) - 1).to_i
  n = 0
  diags = []
  i = 1
  j = rows - 2
  odd = true
  diags << grid[n]
  until i >= rows
    if odd
      odd = false
      n += rows - i
      i += 2
    else
      odd = true
      n += rows - j
      j -= 2
    end
    diags << grid[n]
  end
  n += rows - j
  diags << grid[n]
  until i <= 1
    if odd
      odd = false
      i -= 2
      n += rows - i
    else
      n += rows - j
      odd = true
      j += 2
    end
    diags << grid[n]
  end
  print grid
  puts ""
  print diags
  puts ""
  diags.inject(:+)
end

#need to make a general solution

def spiral(side)
  number = side**2
  numbers = []
  i = 1
  number.times do
    numbers
  end

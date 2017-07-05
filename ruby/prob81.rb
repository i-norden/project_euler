=begin

Path sum: two ways
Problem 81

In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by only moving to the right and down, is indicated in bold red and is equal to 2427.
⎛⎝⎜⎜⎜⎜⎜⎜131201630537805673968036997322343427464975241039654221213718150111956331⎞⎠⎟⎟⎟⎟⎟⎟

Find the minimal path sum, in matrix.txt (right click and "Save Link/Target As..."), a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.

=end

def largest_of(x, y)
  return x if x > y
  return y
end



def min(input, n)
  arr = input.split(" ").map { |x| x.to_i }
  i = 0
  j = 0
  k = 1
  #this
  rows = Array.new
  rows << arr[0]
   (n-1).times do
     i += 1
     j += i
     k += j
     rows << arr[j..k]
   end
  x = 1
  rows[1][0] = rows[1][0] + rows[0]
  rows[1][1] = rows[1][1] + rows[0]
  (n - 2).times do
    x += 1
    y = 0
    (x + 1).times do
      if y == 0
        rows[x][y] = rows[x][y] + rows[x-1][y]
      elsif y == x
        rows[x][y] = rows[x][y] + rows[x-1][y-1]
      else
        rows[x][y] = largest_of(rows[x][y] + rows[x-1][y], rows[x][y] + rows[x-1][y-1])
      end
      y +=1
    end
  end
  rows.shift
  return rows.min { |a, b| a.min <=> b.min }.min
end

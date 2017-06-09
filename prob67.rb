=begin

Maximum path sum II
Problem 67
By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.

NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

=end

def largest_of(x, y)
  return x if x > y
  return y
end



def max_path(input, n)
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
  return rows.max { |a, b| a.max <=> b.max }.max
end

#answer = 7273

=begin

Lattice paths
Problem 15

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

=end

=begin
notice:
2x2 gird => 3x3nodes; nxn grid => (n+1)x(n+1) nodes

possible moves:

[0][0] => [1][0]
[0][0] => [0][1]

[x][y] => [x+1][y]
[x][y] => [x][y+1]

=end


def lattice_paths(n, it) # n = size of grid (e.g. n = 20 => 20x20, with m = 21 => 21x21 nodes), it = number of iterations to perform to approximate # of possible lattice paths
columns = []
m = n + 1
m.times do
  columns << Array.new(m, 0)
end
paths = []
it.times do
  columns[0][0] = 1
  columns[n][n] = 0
  path = Array.new
  until columns[n][n] == 1 do
    coordinates = columns.coordinates(1)
    cord_a = coordinates[0]
    cord_b = coordinates[1]
    if (cord_a + 1) > n
      columns[cord_a][(cord_b + 1)] = 1
    elsif (cord_b + 1 ) > n
      columns[(cord_a + 1)][cord_b] = 1
    else
      if rand() >= 0.5
        columns[(cord_a + 1)][cord_b] = 1
      else
        columns[cord_a][(cord_b + 1)] = 1
      end
    end
    columns[cord_a][cord_b] = 0
    coordinates = columns.coordinates(1)
    path << coordinates
  end
  paths << path.join("") unless paths.include?(path.join(""))
end
#print paths
#puts ""
#print columns
#puts ""
return paths.length
end

def coordinates(x) # finds the cordinates value x in nested array, output format is an array containing both coordinates e.g. if arr[x][y] = 1, arr.coordinates(1) == [x, y]
  each_with_index do |subarray, i|
    j = subarray.index(x)
    return i, j if j
  end
end

#answer, 5x5 (1mil it): 252 , 20x20 (1mil it): 999701 , 20x20 (10mil it): 9974465
#this approach is too slow to work. actual answer is: 137846528820

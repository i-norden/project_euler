=begin

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle below:

75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)

=end

=begin
put each row into a seperate array/key

row1[0] can only move to row2[0] or row2[1], row[1] can only move to row3[1] or row3[2]. genrally: row_n[x] can only move to row_n+1[x] or row_n+1[x+1]

row 1 has 1 member, row 2 2 members, row n n members

maximum value of each number is 99
max value achieveable n rows from bottom is n*99

=end

#brute force method (for funsies):

def brute_force(input, n, it) #args = input in string format, n = number of rows, it = number of iterations to perform
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
   paths = Array.new
   it.times do
     row = 0
     member = 0
     path = Array.new << rows[0]
     (n-1).times do
       row += 1
       if rand() >= 0.5
         member = member
       else
         member += 1
       end
       path << rows[row][member]
     end
     print path
     paths << path.inject(0, :+)
   end
  print rows
  puts ""
  print paths
  puts ""
  return paths.max
end


#answer = 1074, this method won't be feasible for much larger triangles

#mathematic approach:

#or try these
  arr.each { |x|

  }
  rows = n


  rows = Array.new(n, 0) { |x|
    arr[j..k]
    i += 1
    j += i
    k += j + 1
  }

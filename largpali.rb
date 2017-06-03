=begin

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

def palindrome(number1, number2) #finds largest palindrome made by multiplying numbers below or equal to number1 and number2
i = 1
array1 = []
number1.times do
  array1 << i
  i += 1
end
j = 1
array2 = []
number2.times do
  array2 << j
  j += 1
end
multiples = []
array1.each { |x|
  i = 0
  number2.times do
    multiples << x * array2[i]
    i += 1
  end
}
reverse = []
palindromes = []
multiples.each { |x|
  reverse << x.to_s.reverse.to_i
}
x = 0
reverse.length.times do
  if reverse[x] == multiples[x]
  palindromes << reverse[x]
  end
  x += 1
end

largest = palindromes.max
puts largest
end

# answer = 906609

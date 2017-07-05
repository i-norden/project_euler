=begin

Names scores
Problem 22

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

=end


def read
  file = File.new('p022_names.txt').map { |word| word.split(',') }.flatten.each { |word| word.gsub!(/[^a-zA-Z]/, '') }.sort
  values = []
  file.each { |word|
    letters = []
    word.split("").each { |x| letters << (x.downcase.ord - 96) }
    values << letters.inject(:+)
  }
  values.map.with_index { |x, i| x * (i + 1) }.inject(:+)
end

#answer = 871198282



























def read
  file = File.foreach('p022_names.txt').map { |word| word.split(',') }.flatten.each { |word| word.gsub!(/[^a-zA-Z]/, '') }.sort
  values = []
  file.each { |word|
    letters = []
    word.downcase.split("").each { |letter| letters << count(letter) }
    values << letters.inject(:+)
  }
  values.map.with_index { |x, i| x * (i + 1) }.inject(:+)
end

def count(word)
  count = 0
  count += 1 if word.include? "a"
  count += 2 if word.include? "b"
  count += 3 if word.include? "c"
  count += 4 if word.include? "d"
  count += 5 if word.include? "e"
  count += 6 if word.include? "f"
  count += 7 if word.include? "g"
  count += 8 if word.include? "h"
  count += 9 if word.include? "i"
  count += 10 if word.include? "j"
  count += 11 if word.include? "k"
  count += 12 if word.include? "l"
  count += 13 if word.include? "m"
  count += 14 if word.include? "n"
  count += 15 if word.include? "o"
  count += 16 if word.include? "p"
  count += 17 if word.include? "q"
  count += 18 if word.include? "r"
  count += 19 if word.include? "s"
  count += 20 if word.include? "t"
  count += 21 if word.include? "u"
  count += 22 if word.include? "v"
  count += 23 if word.include? "w"
  count += 24 if word.include? "x"
  count += 25 if word.include? "y"
  count += 26 if word.include? "z"
  return count
end




def remove_quotes(n)
  if n.start_with?('"')
    n = n.slice(1..-1)
  end
  if n.end_with?('"')
    n = n.slice(0..-2)
  end
  n
end


def grab_names
  file = File.new("p022_names.txt", "r")
  File.size(file)
end

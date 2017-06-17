=begin

Names scores
Problem 22

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

=end


def grab_names
  file = File.new("p022_names.txt", "r")
  File.size(file)
end

def read
  file = File.foreach('p022_names.txt').map { |word| word.split(',') }.flatten.each { |word| word.gsub!(/[^a-zA-Z]/, '') }.sort!
  values = []
  file.each { |word|
    letters = []
    word.split("").each { |x|
      letters << (x.downcase.ord-96)
    }
    values << letters.inject(:+)
  }
  print file
  return values
end



def read
  file = File.foreach('p022_names.txt').map { |word| word.split(',') }.flatten.each { |word| word.gsub!(/[^a-zA-Z]/, '') }.sort!
  values = []
  file.each { |word|
    count = 0
    word.downcase!
    if word.include? "a"
      count += 1
    end
    if word.include? "b"
      count += 2
    end
    if word.include? "c"
      count += 3
    end
    if word.include? "d"
      count += 4
    end
    if word.include? "e"
      count += 5
    end
    if word.include? "f"
      count += 6
    end
    if word.include? "g"
      count += 7
    end
    if word.include? "h"
      count += 8
    end
    if word.include? "i"
      count += 9
    end
    if word.include? "j"
      count += 10
    end
    if word.include? "k"
      count += 11
    end
    if word.include? "l"
      count += 12
    end
    if word.include? "m"
      count += 13
    end
    if word.include? "n"
      count += 14
    end
    if word.include? "o"
      count += 15
    end
    if word.include? "p"
      count += 16
    end
    if word.include? "q"
      count += 17
    end
    if word.include? "r"
      count += 18
    end
    if word.include? "s"
      count += 19
    end
    if word.include? "t"
      count += 20
    end
    if word.include? "u"
      count += 21
    end
    if word.include? "v"
      count += 22
    end
    if word.include? "w"
      count += 23
    end
    if word.include? "x"
      count += 24
    end
    if word.include? "y"
      count += 25
    end
    if word.include? "z"
      count += 26
    end
    values << count
  }
  values
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

=begin

Counting Sundays
Problem 19

You are given the following information, but you may prefer to do some research for yourself.

    1 Jan 1900 was a Monday. => 7 Jan 1900 was a Sunday
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end












  $year = 0

  class Month
    attr_accessor :name
    attr_accessor :days
    def initialize(name, days)
      @name = name
      @days = days
    end
    def if_feb
      if @name == 'Feb' && $year % 4 == 0 # && century % 400 == 0
        @days = 29
      else
        @days = 28
      end
    end
  end

  def count(month, year1, year2) #( e.g. 1 (for jan), 1901, 2000
    $year = year1
    $months = {
      jan: Month.new('Jan', 31),
      feb: Month.new('Feb', 28),
      mar: Month.new('Mar', 31),
      apr: Month.new('Apr', 30),
      may: Month.new('May', 31),
      jun: Month.new('Jun', 30),
      jul: Month.new('Jul', 31),
      aug: Month.new('Aug', 31),
      sep: Month.new('Sep', 30),
      oct: Month.new('Oct', 31),
      nov: Month.new('Nov', 30),
      dec: Month.new('Dec', 31)
    }
    count = 0
    j = 0
    until $year == year2 + 1 do
      $months[:feb].if_feb
      $months.each { |key, value|
        i = value.days % 7
        j += i
        j = j % 7 if j > 6
        puts value.days  
        puts i
        count += 1 if i + j == 6
        puts count
      }
      $year += 1
    end
    count
  end


#answer = 171

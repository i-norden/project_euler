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


class Month
  def initialize(name, days)
    attr_reader :name
    attr_reader :days
    @name = name
    @days = days
  end
  def if_feb
    if @name == 'Feb' && year % 4 == 0 # && century % 400 == 0
      @days == 29
    end
  end
end


def count(month, year1, year2, day) #( e.g. 1, 1901, 2000, "mon")
  month = month
  year = year1
  range = year2 - year1
  count = 0
  until year == year2 do
    i = 0
    months.each { |name, days|
      i = days % 7
      first_day = days[0] if i == 0
      first_day = days[1] if i == 1
      first_day = days[2] if i == 2
      first_day = days[3] if i == 3
      first_day = days[4] if i == 4
      first_day = days[5] if i == 5
      first_day = days[6] if i == 6
      count += 1 if first_day == day[6]
    }
  end
  days = ["mon", "tue", "wed", "thu", "fri", "say", "sun"]






  months = {
  jan = Month.new('Jan', 31),
  feb = Month.new('Feb', 28),
  mar = Month.new('Mar', 31),
  apr = Month.new('Apr', 30),
  may = Month.new('May', 31),
  jun = Month.new('Jun', 30),
  jul = Month.new('Jul', 31),
  aug = Month.new('Aug', 31),
  sep = Month.new('Sep', 30),
  oct = Month.new('Oct', 31),
  nov = Month.new('Nov', 30),
  dec = Month.new('Dec', 31)
  }



def num_days(year1, year2)
  range = year2 - year1




def find_sunday
  year = 1900
  month = 1

end
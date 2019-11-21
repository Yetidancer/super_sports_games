class Event
  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages

  end

  def max_age
    @ages.sort.reverse[0]
  end

  def min_age
    @ages.sort[0]
  end

  def average_age
    sum = 0.00

    @ages.each do |num|
      sum += num
    end

    integers = ages.length

    mean = sum / integers

    mean.round(2)
    # require "pry"; binding.pry
  end

  def standard_deviation_age
    sum = 0.00

    @ages.each do |num|
      sum += num
    end

    integers = @ages.length

    mean = sum / integers

    subtraction = []

    @ages.each do |num|
       subtraction << (num - mean)
    end

    square = []

    subtraction.each do |num|
      square << (num * num)
    end

    sq_sum = 0

    square.each do |num|
      sq_sum += num
    end

    pre_dev = sq_sum / integers

    std_dev = Math.sqrt(pre_dev).round(2)
  end
end

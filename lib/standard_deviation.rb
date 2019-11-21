ages = [24, 30, 18, 20, 41]
sum = 0.0
# Your code here for calculating the standard deviation
ages.each do |num|
  sum += num
end

p sum

integers = ages.length

p integers

mean = sum / integers

p mean

ages.each do |num|
  ages = (num - mean)
end

p ages


# When you find the standard deviation, print it out

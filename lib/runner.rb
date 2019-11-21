require './lib/games'
require './lib/event'

puts "In which year will your off-brand Olympics be taking place?"

print "> "
year = $stdin.gets.chomp

contest = Games.new(year)

# require "pry"; binding.pry

puts "Would you like to add an event to the Knockoff Games?"



print "> "
ans = $stdin.gets.chomp

until ans.downcase == "no"


puts "What is the name of the event you would like to add?"

print "> "
name = $stdin.gets.chomp

puts "Enter an array with the ages of the participants in the #{name} event. Type 'end' when finished inputting participants."

ages = []
input = 0

until input == "end"
print "> "
input = gets.chomp

ages << input

end

ages.pop

sport = Event.new(name, ages)

contest.events << sport

puts "Would you like to add another event to the Knockoff Games?"

print "> "

answer = $stdin.gets.chomp

break if answer.downcase == "no"

end

puts "Would you like to view the events of the #{year} Knockoff Games?"

print "> "

require "pry"; binding.pry

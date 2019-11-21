require './lib/games'
require './lib/event'

puts "In which year will your off-brand Olympics be taking place?"

print "> "
year = $stdin.gets.chomp

contest = Games.new(year)

require "pry"; binding.pry

puts "What is the name of the event you would like to add?"

print "> "
name = $stdin.gets.chomp

puts "Enter an array with the ages of the participants in the #{name} event."

ages = []

print "> "
input = gets.chomp

ages << input


sport = Event.new(name, ages)

require "pry"; binding.pry

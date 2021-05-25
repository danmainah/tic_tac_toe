#!/usr/bin/env ruby
require './lib/player'
require './lib/board'

puts 'Lets start the game!'

puts 'Welcome to Ruby  Tic Tac Toe game '

puts '0 | 1 | 2'
puts '---------'
puts '3 | 4 | 5'
puts '---------'
puts '6 | 7 | 8'

# players enter their name to begin the game
puts "\nEnter Player1 name: "
one = gets.chomp.strip

if one.empty?
  puts "Player name cant be an empty,enter player's name"
  one = gets.chomp
elsif one.to_i.to_s.eql? one
  puts 'Use only text no numbers: '
  one = gets.chomp
elsif one.length < 4
  puts 'Player name should be more than 4 character: '
  one = gets.chomp
end

puts 'Enter Player2 name: '
two = gets.chomp.strip

if two.empty?
  puts "Player name cant be an empty,enter player's name"
  two = gets.chomp
elsif two.to_i.to_s.eql? two
  puts 'Use only text no numbers: '
  two = gets.chomp
elsif two.length < 4
  puts 'Player name should be more than 4 character: '
  two = gets.chomp
elsif two == one
  puts 'Players cannot have the same name'
  two = gets.chomp
end

puts "#{one} will play with x and #{two} with 0"

puts "\n #{one} starts the game"

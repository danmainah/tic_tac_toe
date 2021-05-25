#!/usr/bin/env ruby
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
$one = gets.chomp.strip

if $one.empty?
  puts "Player name cant be an empty,enter player's name"
  $one = gets.chomp
elsif $one.to_i.to_s.eql? $one
  puts 'Use only text no numbers: '
  $one = gets.chomp
elsif $one.length < 4
  puts 'Player name should be more than 4 character: '
  $one = gets.chomp
end

puts 'Enter Player2 name: '
$two = gets.chomp.strip

if $two.empty?
  puts "Player name cant be an empty,enter player's name"
  $two = gets.chomp
elsif $two.to_i.to_s.eql? $two
  puts 'Use only text no numbers: '
  $two = gets.chomp
elsif $two.length < 4
  puts 'Player name should be more than 4 character: '
  $two = gets.chomp
elsif $two == $one
  puts 'Players cannot have the same name'
  $two = gets.chomp
end

puts "#{$one} will play with x and #{$two} with 0"

puts "\n #{$one} starts the game"


class Game
    WINNING_COMBOS = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [6, 4, 2]
    ]
    def intitialize
      @gameboard = Board.new
      @players = Players.new
    end
  
    # move method handles the actual gameplay
    def move
      @end = false
      @players = Players.new
      @gameboard = Board.new
      @turn = 1
      while @turn < 10
        if @turn.odd?
          change_turn(@players.player1, 'X')
        elsif @turn.even?
          change_turn(@players.player2, 'O')
        end
      end
    end
  
    # change_turn method handles position choice and switching player turns
    def change_turn(player, symbol)
      puts "#{player}(#{symbol}) please choose a position"
      @player_move = gets.chomp.to_i
      if (0..8).include?(@player_move) && @gameboard.board[@player_move] == ' ' && @end == false
        @turn += 1
        @gameboard.board_update(@player_move, symbol)
        win
        draw
      else
        puts "Please enter a number between 0 to 8 in an untaken location\n"
      end
    end
  
    def win
      WINNING_COMBOS.each do |win|
        if (@gameboard.board[win[0]] == @gameboard.board[win[1]] &&
          @gameboard.board[win[1]] == @gameboard.board[win[2]]) &&
           @gameboard.board[win[0]] != ' '
          if @gameboard.board[win[0]] == 'X'
            puts "#{@players.player1} WINS"
            @turn = 10
            @end = true
          elsif @gameboard.board[win[0]] == 'O'
            puts "#{@players.player2} WINS"
            @turn = 10
            @end = true
          end
        end
      end
    end
  
    # method to determine if all the positions are filled without a victory
    def draw
      if @turn == 10 && @end == false
        puts "It's a draw"
      end
    end
  
  
  end
  
  game = Game.new
  game.move  

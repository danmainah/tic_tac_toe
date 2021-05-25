class Board
    attr_reader :board
  
    def initialize
      puts 'On your turn enter one of the following numbers to enter your position'
      puts '0 | 1 | 2'
      puts '---------'
      puts '3 | 4 | 5'
      puts '---------'
      puts '6 | 7 | 8'
      @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
  
    # method to update the @board array
    def board_update(position, symbol)
      @board[position] = symbol
      game_board_display(@board)
    end
  
    # method to update board after each turn
    def game_board_display(board)
      puts "#{board[0]} | #{board[1]} | #{board[2]}"
      puts '---------'
      puts "#{board[3]} | #{board[4]} | #{board[5]}"
      puts '---------'
      puts "#{board[6]} | #{board[7]} | #{board[8]}"
    end
  end
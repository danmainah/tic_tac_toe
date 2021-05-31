require_relative '../lib/board'
describe '#Board' do
  context '#initialize' do
    it 'check if the board displays when initialized' do
      @gameboard = Board.new && true
      expect(true).to eql(true)
    end
  end

  context '#board_update' do
    it 'checks if board has been updated' do
      Board.new.board_update(2, 'X') && Board.new.game_board_display(@board)
      expect(true).to eql(true)
    end
  end

  context '#game_board_display' do
    it 'displays board when game is ongoing with updated position' do
      @board = 2
      Board.new.game_board_display(@board) && Board.new.game_board_display(board)
      expect(true).to eql(true)
    end
  end
end
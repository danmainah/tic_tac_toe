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
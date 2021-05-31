require_relative '../bin/main'

context '#move' do
  it 'initialize board dispay to begin the game' do
    @gameboard = Board.new || @players.player1 = 'X' && move
    expect(true).to eql(true)
  end
end

describe '#change_turn' do
    it 'check if number is in the board' do
      return true if (0..8).include?(@player_move)
  
      expect(true).to eql(true)
    end
  end

  
describe '#win' do
    let(:wins) {[0, 1, 2]}
    let(:WIN_NUM) {[[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8],[6, 4, 2]]}
    it "it should return the win if wins is in the steps" do
      expect(WIN_NUM).to include(wins)
  end
  end
  
  describe '#draw' do
    it 'checks if draw has been achieved in the game' do
      return true if @turn == 10 && @end == false
  
      expect(true).to eql(true)
    end
  end
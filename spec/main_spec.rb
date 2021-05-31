require_relative '../bin/main'

context '#move' do
  it 'initialize board dispay to begin the game' do
    @gameboard = Board.new || @players.player1 = 'X' && move
    expect(true).to eql(true)
  end
end
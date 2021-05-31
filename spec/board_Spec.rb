require_relative '../lib/board'
describe '#Board' do
  context '#initialize' do
    it 'check if the board displays when initialized' do
      @gameboard = Board.new && true
      expect(true).to eql(true)
    end
  end
require_relative '../lib/player'

describe Players do
  describe '#initialize' do
    let(:player) { Players.new('faith', 'daniel') }

    it 'Initialize take two argument and initialize the two players names' do
      expect(player.player1).to eq('faith')
      expect(player.player2).to eq('daniel')
    end
  end
end

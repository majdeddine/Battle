require 'player'

describe Player do
  subject(:player) {described_class.new('Theo')}
  it '.name return player name ' do
    expect(player.name).to eq('Theo')
  end
end

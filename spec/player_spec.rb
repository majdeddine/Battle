require 'player'

describe Player do
  subject { described_class.new('Theo') }

  it '.name return player name ' do
    expect(subject.name).to eq('Theo')
  end

  context '#attacked' do
    it 'reduces HP by 10' do
      expect{subject.attacked }.to change { subject.hp }.by(-10)
    end
  end
end

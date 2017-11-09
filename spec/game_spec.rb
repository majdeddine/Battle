require 'game'

describe Game do
  subject { described_class.new('player', 'player', player_class: player_class) }
  let(:player) { double(:player1, attacked: nil, name: 'majd' ) }
  let(:player_class) { double(:player_class, new: player) }

  describe '#get' do
    before(:each) { subject.players.push(:player) }
    it 'gets first item' do
      expect(subject.get(2)).to eq :player
    end
  end

  describe '#attack' do
    context 'attacks player 1' do
      after(:each) { subject.attack(0) }

      it 'calls player\'s #attacked method' do
        expect(player).to receive(:attacked)
      end
    end
  end

  describe '#name' do
    context 'gets name of player 1' do
      it 'calls player\'s #attacked method' do
        expect(subject.getattr(0, :name)).to eq 'majd'
      end
    end
  end
end

require './lib/player'

class Game
  attr_reader :players

  def initialize(*names, player_class: Player)
    @players = names.map { |n| player_class.new(n) }
    @player = player_class
  end

  def get(index)
    @players[index]
  end

  def getattr(index, attribute)
    get(index).send(attribute)
  end

  def attack(index)
    get(index).attacked
  end
end

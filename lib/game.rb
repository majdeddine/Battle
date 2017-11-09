require './lib/player'

class Game
  attr_reader :players, :turn

  def initialize(*names, player_class: Player)
    @players = names.map { |n| player_class.new(n) }
    @turn = 0
    @player = player_class
  end

  def get(index)
    @players[index]
  end

  def getattr(index, attribute)
    get(index).send(attribute)
  end

  def attack
    switch
    get(turn).attacked
  end

  def switch
    @turn = turn == 0 ? 1 : 0
  end

  def last
    get(turn - 1)
  end

  def current
    get(turn)
  end
end


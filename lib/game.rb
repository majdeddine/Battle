require './lib/player'

class Game
  attr_reader :players, :turn, :loser

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
    return unless loser.nil?
    switch
    get(turn).attacked
    get_loser
  end

  def switch
    @turn = turn == 0 ? 1 : 0
  end

  def current
    get(turn)
  end

  def get_loser
    players.each { |player| @loser = player if player.hp <= 0 }
  end
end

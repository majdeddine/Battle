class Player
  INITIAL_HP = 100
  DEFAULT_ATTACK = 10
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = INITIAL_HP
  end

  def attacked(change = DEFAULT_ATTACK)
    @hp -= change
  end
end

class Player

  attr_reader :name, :hp
  HP = 100

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def reduce_hp(num)
    @hp -= num
  end

end

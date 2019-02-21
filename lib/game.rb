class Game

  attr_reader :player_one, :player_two

  def initialize(player1, player2)
    @player_one = Player.new(player1)
    @player_two = Player.new(player2)
  end

  def attack(player)
    player.take_damage
  end

end

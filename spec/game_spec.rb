require 'game'

describe Game do
  it 'causes a player to be damaged when attacked' do
    game = Game.new('Jim', 'Jo')
    player = Player.new('James')
    game.attack(player)
    expect { game.attack(player) }.to change{player.hit_points}.by -10
  end

  it "initializes with two instances of Player" do
    game = Game.new("Hoju", "Mojo")
  end
end

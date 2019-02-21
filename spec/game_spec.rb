require 'game'

describe Game do
  it 'causes a player to be damaged when attacked' do
  game = Game.new
  player = Player.new('James')
  game.attack(player)
  expect { game.attack(player) }.to change{player.hit_points}.by -10
  end
end
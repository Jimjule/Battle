require 'player.rb'

describe Player do
  it 'returns its own name' do
    player = Player.new('Jeffray')
    expect(player.name).to eq('Jeffray')    
  end
end

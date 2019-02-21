require "sinatra"
require "player.rb"

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:name_one])
    $player_two = Player.new(params[:name_two])
    redirect('/play')
  end

  get '/play' do
    @player_name_one = $player_one.name
    @player_name_two = $player_two.name
    @player_one_hit_points = 60
    @player_two_hit_points = 60
    erb(:play)
  end

  get '/attack' do
    @player_name_two = $player_two.name
    erb :attack
  end

run! if app_file == $0
end

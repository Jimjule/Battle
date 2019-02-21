require "sinatra"
require "player"
require "game"

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:name_one], params[:name_two])
    redirect('/play')
  end

  get '/play' do
    @player_one = $game.player_one
    @player_two = $game.player_two
    erb(:play)
  end

  get '/attack' do
    @player_two = $game.player_two
    $game.attack(@player_two)
    erb :attack
  end

run! if app_file == $0
end

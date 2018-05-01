require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base


  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end


  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/success' do
    $player_2.reduce_hp(10)
    redirect '/play'
  end

  run! if app_file == $0

end

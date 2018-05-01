require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

=begin
  configure do
    enable :sessions
    set :session_secret, "My session secret"
  end
=end

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
    erb(:success)
  end

  run! if app_file == $0
end

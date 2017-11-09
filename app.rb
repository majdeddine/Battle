require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/attack' do
    $game.attack
    session[:status] = params[:status]
    redirect '/play'
  end

  post '/names' do
    $game = Game.new(params[:player1], params[:player2])
    redirect'/play'
  end

  get '/play' do
    @game = $game
    @status = session[:status] || 'Battle starting!'
    erb :play
  end

  run! if app_file == $0
end

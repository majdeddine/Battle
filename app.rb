require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/p1_attacked' do
    $game.attack(0)
    session[:status] = params[:status]
    redirect '/play'
  end

  post '/names' do
    $game = Game.new(params[:player1], params[:player2])
    # $player1 = Player.new(params[:player1])
    # $player2 = Player.new(params[:player2])
    redirect'/play'
  end

  get '/play' do
    @game = $game
    @player1 = $game.get(0)
    @player2 = $game.get(1)
    @status = session[:status] || 'Battle starting!'
    erb :play
  end

  run! if app_file == $0
end

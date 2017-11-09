require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/update' do
    session[:status] = params[:new_status]
    redirect '/play'
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect'/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @status = session[:status] || 'Battle starting!'
    erb :play
  end

  run! if app_file == $0
end

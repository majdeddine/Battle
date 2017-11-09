require 'sinatra/base'

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
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect'/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @status = session[:status] || 'Battle starting!'
    erb :play
  end

  run! if app_file == $0
end

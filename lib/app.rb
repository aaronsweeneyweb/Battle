require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect to('/play')
  end

  get '/play' do

    p session
    @player_one = session[:player_one_name]
    @player_two = session[:player_two_name]
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "<form action='/battle' method='post'>
      <input type='text' name='player_one_name'>
      <input type='text' name='player_two_name'>
      <input type='submit' value='Submit'>
      </form>"
  end
  
  post '/battle' do
    "#{params[:player_one_name]} vs #{params[:player_two_name]}"
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions
  configure :development do 
    register Sinatra::Reloader
  end

  get "/" do
    erb(:index)
  end

  get "/play" do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb(:play)
  end

  post "/names" do
    session[:player_one] = params[:player_one] 
    session[:player_two] = params[:player_two]
    
    redirect '/play'
  end

  # start the server if ruby file executed directly
  # $0 = what was last in the command line
  # config file is run when rackup is called
  run! if app_file == $0
end
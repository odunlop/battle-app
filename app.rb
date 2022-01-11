require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    @player_one = params[:player_one] 
    @player_two = params[:player_two]
    erb(:name_result)
  end
  # start the server if ruby file executed directly
  # $0 = what was last in the command line
  # config file is run when rackup is called
  run! if app_file == $0
end
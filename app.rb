require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get "/" do
    "Testing infrastructure working!"
  end

  # start the server if ruby file executed directly
  # $0 = what was last in the command line
  # config file is run when rackup is called
  run! if app_file == $0
end
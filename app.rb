require "sinatra/base"
require "sinatra/reloader"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class Battle < Sinatra::Base
  enable :sessions
  configure :development do 
    register Sinatra::Reloader
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    player_one = Player.new(params[:player_one])
    player_two = Player.new(params[:player_two])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  get "/attack" do
    @game = $game
    @game.attack
    erb(:attack)
  end

  post "/switch-turns" do
    $game.switch_turn
    redirect "/play"
  end

  # start the server if ruby file executed directly
  # $0 = what was last in the command line
  # config file is run when rackup is called
  run! if app_file == $0
end
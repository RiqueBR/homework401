require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get '/game/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @simple_game = game.check_winner()
  erb(:result)
end

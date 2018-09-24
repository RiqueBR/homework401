require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get '/welcome_page' do
  erb(:welcome)
end

get '/result' do
  erb(:result)
end

get '/game_rules' do
  erb(:game_rules)
end

get '/game/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @simple_game = game.check_winner()
  erb(:result)
end

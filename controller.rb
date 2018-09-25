require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

# In order to take the choice of both players, I can create a get '/welcome/rock (or paper, or scissors)'
# and it will take me to the page rock.rb or paper.rb or scissors.rb; When there, create a link that returns
# to the /game function, however I have to change the name of the function for '/welcome/:param1/:param2'

get '/welcome' do
  erb(:welcome)
end

get '/result/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @simple_game = game.check_winner()
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

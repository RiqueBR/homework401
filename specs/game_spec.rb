require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < MiniTest::Test
def setup
  @game1 = Game.new("rock", "paper")
  @game2 = Game.new("paper", "rock")
  @game3 = Game.new("rock", "scissors")
  @game4 = Game.new("scissors", "rock")
  @game5 = Game.new("paper", "scissors")
  @game6 = Game.new("scissors", "paper")
  @game7 = Game.new("rock", "rock")
  @game8 = Game.new("scissors", "scissors")
  @game9 = Game.new("paper", "paper")
end

def test_player_2_wins__rock_v_paper
  assert_equal("player 2 wins!", @game1.check_winner())
end

def test_player_1_wins__paper_v_rock
  assert_equal("player 1 wins!", @game2.check_winner())
end

def test_player_1_wins__rock_v_scissors
  assert_equal("player 1 wins!", @game3.check_winner())
end

def test_player_2_wins__scissors_v_rock
  assert_equal("player 2 wins!", @game4.check_winner())
end

def test_player_2_wins__paper_v_scissors
  assert_equal("player 2 wins!", @game5.check_winner())
end

def test_player_1_wins__scissors_v_paper
  assert_equal("player 1 wins!", @game6.check_winner())
end

def test_players_draw___rock_v_rock
  assert_equal("It's a draw", @game7.check_winner())
end

def test_players_draw___scissors_v_scissors
  assert_equal("It's a draw", @game8.check_winner())
end

def test_players_draw___paper_v_paper
  assert_equal("It's a draw", @game9.check_winner)
end

end

require('pry-byebug')
class Game

  attr_accessor :player1, :player2


  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def check_winner()
    if @player1 == "rock" && @player2 == "scissors"
      return "player 1 wins!"
    elsif @player1 == "rock" && @player2 == "paper"
      return "player 2 wins!"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "player 1 wins!"
    elsif @player1 == "scissors" && @player2 == "rock"
      return "player 2 wins!"
    elsif @player1 == "paper" && @player2 == "rock"
      return "player 1 wins!"
    elsif @player1 == "paper" && @player2 == "scissors"
      return "player 2 wins!"
    elsif @player1 == "rock" && @player2 == "rock"
      return "It's a draw"
    elsif @player1 == "paper" && @player2 == "paper"
      return "It's a draw"
    elsif @player1 == "scissors" && @player2 =="scissors"
      return "It's a draw"
    end
  end

end

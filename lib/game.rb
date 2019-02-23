class Game
  attr_reader :winner, :player1, :player2
  RULES = {scissors: :paper, paper: :rock, rock: :scissors}

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    @player1.weapon
    @player2.weapon
    if @player1.weapon == @player2.weapon
      @winner = nil
      "It's a draw"
    elsif
      RULES[@player1.weapon] == @player2.weapon
      @winner = @player1
    else
      @winner = @player2
    end
  end
end
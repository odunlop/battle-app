class Game

  attr_reader :current_turn

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @current_turn = player_one
  end

  def player_one
    @players.first
  end
  
  def player_two
    @players.last
  end

  def attack
    (opponent_of(current_turn)).receive_damage
  end

  def switch_turn
    @current_turn = opponent_of(current_turn)
  end

  private
  
  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
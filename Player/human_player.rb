require_relative './player'

class HumanPlayer < Player
  attr_accessor :human_player_steps
  def initialize
    @human_player_steps = []
  end

  def selects_box
    puts 'Enter the box number to match you pattern in the next line '
    player_step = gets.chomp
    @human_player_steps << player_step
    player_step.to_i - 1
  end
end

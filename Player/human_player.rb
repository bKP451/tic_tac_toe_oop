require_relative './player'
require_relative '../Modules/available_spaces'
class HumanPlayer < Player
  include AvailableSpaces 
  attr_accessor :human_player_steps

  def validate(player_input, current_game_boxes)
    current_game_boxes[player_input - 1].empty?
  end

  def selects_box(current_game_boxes)
    puts 'Enter the box number to match you pattern in the next line '
    player_step = gets.chomp.to_i
    if validate(player_step, current_game_boxes)
      player_step.to_i - 1
    else
      selects_box(current_game_boxes)
    end
  end
end

require_relative '../Modules/available_spaces'

class SystemBot < Player
  include AvailableSpaces
  attr_accessor :system_bot_steps

  def selects_box(current_game_boxes)
    available_spaces = available_spaces(current_game_boxes)
    system_step = available_spaces.shuffle.first
    system_step - 1
  end
end
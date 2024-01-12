require_relative './available_spaces'
require_relative '../colors'

module WinningLogic
  include AvailableSpaces

  def result(game, single_box)
    if single_box == 'X'.blue
      puts "Human Player won\n ------------------".green
    else 
      puts "System Bot won\n ------------------".blue
    end
    game.board.display_current_grid
    game.game_running = false
  end

  def check_for_winner(game, current_game_boxes)
    if current_game_boxes[0] == current_game_boxes[1] && current_game_boxes[1] == current_game_boxes[2]
      result(game, current_game_boxes[0])

    elsif current_game_boxes[3] == current_game_boxes[4] && current_game_boxes[4] == current_game_boxes[5]
      result(game, current_game_boxes[3])

    elsif current_game_boxes[6] == current_game_boxes[7] && current_game_boxes[7] == current_game_boxes[8]
      result(game, current_game_boxes[7])

    elsif current_game_boxes[0] == current_game_boxes[3] && current_game_boxes[3] == current_game_boxes[6]
      result(game, current_game_boxes[0])

    elsif current_game_boxes[1] == current_game_boxes[4] && current_game_boxes[4] == current_game_boxes[7]
      result(game, current_game_boxes[1])

    elsif current_game_boxes[2] == current_game_boxes[5] && current_game_boxes[5] == current_game_boxes[8]
      result(game, current_game_boxes[2])

    elsif current_game_boxes[0] == current_game_boxes[4] && current_game_boxes[4] == current_game_boxes[8]
      result(game, current_game_boxes[0])

    elsif current_game_boxes[2] == current_game_boxes[4] && current_game_boxes[4] == current_game_boxes[6]
      result(game, current_game_boxes[4])
    elsif game.available_spaces_count(current_game_boxes).zero?
      puts "Game Tied\n ------------------"
      game.board.display_current_grid
      game.game_running = false
    end
  end
end
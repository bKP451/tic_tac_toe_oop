require_relative 'Player/human_player'
require_relative 'board'

class Game 
  attr_reader :player
  attr_accessor :board, :game_running

  def initialize
    @game_running = true
    @player = HumanPlayer.new
    @board = Board.new
  end
end

new_game = Game.new
tic_tac_board = new_game.board

while new_game.game_running
  tic_tac_board.display_current_grid
  tic_tac_board.clues_grid
  player_step = new_game.player.select_box
  player_step_in_box = player_step.to_i - 1
  tic_tac_board.current_game_boxes[player_step_in_box] = 'X'

end

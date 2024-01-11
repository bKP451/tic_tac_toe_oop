require_relative 'Player/human_player'
require_relative 'Player/system_bot'
require_relative 'board'

class Game 
  attr_reader :human_player, :system_bot
  attr_accessor :board, :game_running

  def initialize
    @game_running = true
    @human_player = HumanPlayer.new
    @system_bot = SystemBot.new
    @board = Board.new
  end
end

new_game = Game.new
tic_tac_board = new_game.board

def human_plays(game, board)
  player_step = game.human_player.human_selects_box
  player_step_in_box = player_step.to_i - 1
  board.current_game_boxes[player_step_in_box] = 'X'
end

def system_plays(game, board)
  system_step = game.system_bot.system_selects_box(board.current_game_boxes)
  system_bot_step_in_box = system_step - 1
  board.current_game_boxes[system_bot_step_in_box] = 'O'
end

while new_game.game_running
  tic_tac_board.display_current_grid
  tic_tac_board.clues_grid
  human_plays(new_game, tic_tac_board)
  system_plays(new_game, tic_tac_board)
end

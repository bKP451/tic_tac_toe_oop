require_relative 'game'

game = Game.new
tic_tac_board = game.board

def human_plays(game, board)
  player_step = game.human_player.selects_box
  board.current_game_boxes[player_step] = 'X'
end

def system_plays(game, board)
  system_step = game.system_bot.selects_box(board.current_game_boxes)
  board.current_game_boxes[system_step] = 'O'
end

while game.game_running
  tic_tac_board.display_current_grid
  tic_tac_board.clues_grid
  human_plays(game, tic_tac_board)
  system_plays(game, tic_tac_board)
  if game.available_spaces(tic_tac_board.current_game_boxes).count < 5
    game.game_running = false
    puts "Baby now you have to check for winner"
    game.traced_player_steps(game.human_player.human_player_steps, game.system_bot.system_bot_steps)
  end
end
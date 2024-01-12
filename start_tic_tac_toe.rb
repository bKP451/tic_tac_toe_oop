require_relative 'game'

game = Game.new
tic_tac_board = game.board

def human_plays(game, current_boxes)
  player_step = game.human_player.selects_box(current_boxes)
  game.board.current_game_boxes[player_step] = 'X'
  game.board.number_hints[player_step] = ''
end

def system_plays(game, board)
  system_step = game.system_bot.selects_box(board.current_game_boxes)
  board.current_game_boxes[system_step] = 'O'
  board.number_hints[system_step] = ''
end

while game.game_running
  system('clear')
  tic_tac_board.display_current_grid
  tic_tac_board.clues_grid
  human_plays(game, tic_tac_board.current_game_boxes)
  if game.available_spaces_count(tic_tac_board.current_game_boxes) > 1 
    system_plays(game, tic_tac_board)
  end 
  if game.available_spaces(tic_tac_board.current_game_boxes).count < 5
    game.check_for_winner(game, tic_tac_board.current_game_boxes)
  end
end
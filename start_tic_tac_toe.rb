require_relative 'game'

game = Game.new
tic_tac_board = game.board

def human_plays(game, board)
  player_step = game.human_player.selects_box
  board.current_game_boxes[player_step] = 'X'
  board.number_hints[player_step] = ''
end

def system_plays(game, board)
  system_step = game.system_bot.selects_box(board.current_game_boxes)
  board.current_game_boxes[system_step] = 'O'
  board.number_hints[system_step] = ''
end

while game.game_running
  tic_tac_board.display_current_grid
  tic_tac_board.clues_grid
  human_plays(game, tic_tac_board)
  system_plays(game, tic_tac_board)
  
  if game.available_spaces(tic_tac_board.current_game_boxes).count < 5
    # game.game_running = false
    puts "Available spaces is #{game.available_spaces(tic_tac_board.current_game_boxes).count}"
    puts "Baby now you have to check for winner"
    # game.traced_player_steps(game.human_player.human_player_steps, game.system_bot.system_bot_steps)
    game.check_for_winner(game, game.available_spaces_count(tic_tac_board.current_game_boxes))
  end
end
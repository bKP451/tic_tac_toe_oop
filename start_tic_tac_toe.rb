require_relative 'game'
require_relative 'colors'

def human_plays(game, current_boxes)
  player_step = game.human_player.selects_box(current_boxes)
  current_boxes[player_step] = 'X'.blue
  game.board.number_hints[player_step] = ''
end

def system_plays(game, current_boxes)
  system_step = game.system_bot.selects_box(current_boxes)
  current_boxes[system_step] = 'O'.brown
  game.board.number_hints[system_step] = ''
end

continue_playing = 'Y'
until continue_playing == 'N'
  game = Game.new
  tic_tac_board = game.board
  present_game_boxes = tic_tac_board.current_game_boxes
  while game.game_running
    system('clear')
    tic_tac_board.display_current_grid
    tic_tac_board.clues_grid
    human_plays(game, present_game_boxes)
    system_plays(game, present_game_boxes) if game.available_spaces_count(present_game_boxes) > 1
    game.check_for_winner(game, present_game_boxes) if game.available_spaces_count(present_game_boxes) < 5
  end

  puts 'Press any key expect n/N to continue playing'.red
  continue_playing = gets.chomp.upcase
end
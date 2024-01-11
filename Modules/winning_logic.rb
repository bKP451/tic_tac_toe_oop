module WinningLogic
  
  def check_for_winner(game, available_spaces)
    winning_combination = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 9],
      [1, 5, 9],
      [3, 5, 7]
    ]
    puts "human steps #{game.human_player.human_player_steps}"
    if winning_combination.include?(game.human_player.human_player_steps)
      puts 'Human Player won'
      game.game_running = false
    elsif winning_combination.include?(game.system_bot.system_bot_steps)
      puts 'System Won'
      game.game_running = true
    elsif available_spaces < 2 
      puts "Tie"
    end
  end

  # def traced_player_steps(human_steps, system_bot_steps)
  #   # puts "Hi I am the player steps"
  #   puts "Hi I am the human steps #{human_steps}"
  #   puts "Hi I am the system steps #{system_bot_steps}"
  # end
end
require_relative 'Player/human_player'
require_relative 'Player/system_bot'
require_relative 'board'
require_relative 'Modules/available_spaces'
require_relative 'Modules/winning_logic'
class Game
  include AvailableSpaces
  include WinningLogic
  attr_reader :human_player, :system_bot
  attr_accessor :board, :game_running

  def initialize
    @game_running = true
    @human_player = HumanPlayer.new
    @system_bot = SystemBot.new
    @board = Board.new
  end
end

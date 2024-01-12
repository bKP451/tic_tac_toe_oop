class Board
  attr_accessor :current_game_boxes, :number_hints

  def initialize
    @number_hints = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @current_game_boxes = ['', '', '', '', '', '', '', '', '']
  end

  def display_current_grid
    puts " #{@current_game_boxes[0]}   | #{@current_game_boxes[1]}  |  #{@current_game_boxes[2]}\n ---+---+---
    #{@current_game_boxes[3]}| #{@current_game_boxes[4]}  |  #{@current_game_boxes[5]}\n ---+---+--- \t\t
    #{@current_game_boxes[6]}| #{@current_game_boxes[7]}  |  #{@current_game_boxes[8]}
    "
  end

  def clues_grid
    puts " #{@number_hints[0]}   | #{@number_hints[1]}  |  #{@number_hints[2]}\n ---+---+---
    #{@number_hints[3]}| #{@number_hints[4]}  |  #{@number_hints[5]}\n ---+---+--- \t\t
    #{@number_hints[6]}| #{@number_hints[7]}  |  #{@number_hints[8]}
    "
  end
end
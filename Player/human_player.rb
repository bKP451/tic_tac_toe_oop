require_relative './player'

class HumanPlayer < Player
  def human_selects_box
    puts 'Enter the box number to match you pattern in the next line '
    gets.chomp
  end
end

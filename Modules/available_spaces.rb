module AvailableSpaces
  def available_spaces(current_game_boxes) 
    current_game_boxes.map.with_index { |box, idx| idx + 1 if box.empty? } - [nil]
  end

  def available_spaces_count(current_game_boxes)
    available_spaces(current_game_boxes).count
  end
end
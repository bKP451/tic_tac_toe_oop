class SystemBot < Player
  def available_spaces(current_game_boxes) 
    current_game_boxes.map.with_index { |box, idx| idx + 1 if box.empty? } - [nil]
  end

  def system_selects_box(current_game_boxes)
    available_spaces = available_spaces(current_game_boxes)
    available_spaces.shuffle.first
  end
end
module SteppingPiece



def moves
  possible_moves = []
  move_diff.each do |diff|
    new_x = pos.first + diff.first
    new_y = pos.last + diff.last
    new_pos = [new_x, new_y]
    possible_moves << new_pos if board.valid_move(new_pos) && board.empty?(new_pos)
  end
  possible_moves
end

private
  def move_diff
    raise StandardError.new "This MUST be called on a piece, not in the module"
  end
end

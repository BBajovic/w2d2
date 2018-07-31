require_relative 'slidingpiece'
require_relative 'piece'

class Queen < Piece
  include SlidingPiece

  def symbol
    "Q"
  end

  protected

  def move_dirs
    HORIZONTAL_DIRS.dup + DIAGONAL_DIRS.dup
  end

end

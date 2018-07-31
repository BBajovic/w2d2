require_relative 'slidingpiece'
require_relative 'piece'

class Rook < Piece
  include SlidingPiece

  def symbol
    "R"
  end

  protected

  def move_dirs
    HORIZONTAL_DIRS.dup
  end

end

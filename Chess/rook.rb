require_relative 'slidingpiece'

class Rook < Piece
  include SlidingPiece
  def symbol
    "R"

  end
  def moving_dirs
    HORIZONTAL_DIRS
  end

end

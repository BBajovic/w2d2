require_relative 'slidingpiece'

class Bishop < Piece
  include SlidingPiece

  def symbol
    "B"
  end

  protected

  def moving_dirs
    DIAGONAL_DIRS.dup
  end

end

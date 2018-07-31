require_relative 'steppingpiece'

class King < Piece
  include SteppingPiece
  MOVE_DIFFS = [
    [1, 1],
    [0, 1],
    [1, 0],
    [1, -1],
    [0, -1],
    [-1, -1],
    [-1, 0],
    [-1, 1]
  ]

  def symbol
      "KG"
  end
end

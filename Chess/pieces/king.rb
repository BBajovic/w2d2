require_relative 'steppingpiece'
require_relative 'piece'

class King < Piece
  include SteppingPiece
  def move_diff
    [
    [1, 1],
    [0, 1],
    [1, 0],
    [1, -1],
    [0, -1],
    [-1, -1],
    [-1, 0],
    [-1, 1]
  ]
  end

  def symbol
      "KG"
  end
end

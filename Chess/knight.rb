require_relative 'steppingpiece'

class Knight
  include SteppingPiece

  MOVE_DIFFS = [
    [-2, -1],
    [-2, 1],
    [-1, -2],
    [-1, 2],
    [1, -2],
    [1, 2],
    [2, -1],
    [2, 1]
  ]
  def symbol
    'KT'
  end
end

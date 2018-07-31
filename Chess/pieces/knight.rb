require_relative 'steppingpiece'
require_relative 'piece'

class Knight
  include SteppingPiece

  def move_diff
     [
    [-2, -1],
    [-2, 1],
    [-1, -2],
    [-1, 2],
    [1, -2],
    [1, 2],
    [2, -1],
    [2, 1]
  ]
  end
  
  def symbol
    'KT'
  end
end

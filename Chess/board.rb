class Board

  attr_accessor :grid

  def initialize
    @rows = Array.new(8) { Array.new(8) }

  end

  def move_piece(start_pos, end_pos)
    raise NoStartPieceError if rows[start_pos]is_a?(NullPiece)
    raise InvalidMoveError if valid_pos?(end_pos) == false

  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos,val)
    x,y = pos
    rows[x][y] = val
  end

end

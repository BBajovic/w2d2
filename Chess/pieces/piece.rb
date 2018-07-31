

class Piece
    attr_reader :color, :board, :pos

  def initialize(color = nil, board = nil, pos = nil)
    @color = color
    @board = board
    @pos = pos

  end


  def to_s
    # "#{symbol}"
    'piece'
  end

  def moves

  end

  def empty?

  end

  def valid_moves

  end

  def pos=(val)

  end

  def symbol

  end

  private

  def move_into_check?(end_pos)

  end


end

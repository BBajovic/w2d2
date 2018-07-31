class Piece
    attr_reader :color, :board, :pos

  def initialize(color, board, pos)
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

  valid_moves

  end

  def pos=(val)

  end

  def symbol

  end

  private

  def move_into_check?(end_pos)

  end


end

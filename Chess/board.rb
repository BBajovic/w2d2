require_relative 'piece.rb'
require_relative 'null_piece.rb'

class Board

  attr_accessor :grid

  def initialize
    @rows = Array.new(8) { Array.new(8) }
    populate
  end

  def move_piece(start_pos, end_pos)
    # raise NoStartPieceError if rows[start_pos]is_a?(NullPiece)
    # raise InvalidMoveError if valid_pos?(end_pos) == false

  end

  def [](pos)
    x, y = pos
    rows[x][y]
  end

  def []=(pos,val)
    x,y = pos
    rows[x][y] = val
  end

  def populate
    [0, 1, -2, -1].each do |starting_row|
      8.times do |i|
        @rows[starting_row][i] = Piece.new
      end
    end
    @rows.each do |row|
      row.each do |square|
        if square == nil
          square = NullPiece.new
        end
      end
    end
  end

end

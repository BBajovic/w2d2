require_relative 'piece.rb'
require_relative 'null_piece.rb'

class NoStartPieceError < ArgumentError; end
class InvalidPositionError < StandardError; end

class Board

  attr_accessor :grid, :row

  def initialize
    @rows = Array.new(8) { Array.new(8) }
    populate
  end

  def move_piece(start_pos, end_pos)
    raise NoStartPieceError.new if self[start_pos].is_a?(NullPiece)
    raise InvalidPositionError.new unless valid_move?(start_pos) && valid_move?(end_pos)
    current_piece = self[start_pos]
    self[end_pos] = current_piece
    self[start_pos] = NullPiece.new
  end

  def valid_move?(pos)
    x, y = pos
    x.between?(0, 7) && y.between?(0, 7)
  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  def []=(pos,val)
    x,y = pos
    @rows[x][y] = val
  end

  def populate
    [0, 1, -2, -1].each do |starting_row|
      8.times do |i|
        @rows[starting_row][i] = Piece.new
      end
    end
    @rows.each_with_index do |row, idx|
      row.each_with_index do |col, jdx|
        @rows[idx][jdx] = NullPiece.new if @rows[idx][jdx].nil?

      end
    end
  end

end

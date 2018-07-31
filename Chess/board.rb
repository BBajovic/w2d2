require_relative 'pieces/pieces'

class NoStartPieceError < ArgumentError; end
class InvalidPositionError < StandardError; end

class Board
  # include Enumerable
  attr_accessor  :rows, :sentinel

  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) { Array.new(8, sentinel) }
    populate
  end

  def move_piece(start_pos, end_pos)
    raise NoStartPieceError.new if self[start_pos].is_a?(NullPiece)
    raise InvalidPositionError.new unless valid_move?(start_pos) && valid_move?(end_pos)
    current_piece = self[start_pos]
    self[end_pos] = current_piece
    self[start_pos] = sentinel
  end

  def empty?(pos)
    self[pos].is_a?(NullPiece)
  end

  def valid_move?(pos)
    x, y = pos
    x.between?(0, 7) && y.between?(0, 7)
  end

  def [](pos)
    # byebug
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
        @rows[starting_row][i] = Piece.new(1, 2, 3)
      end
    end
    # @rows.each_with_index do |row, idx|
    #   row.each_with_index do |col, jdx|
    #     @rows[idx][jdx] = NullPiece. if @rows[idx][jdx].nil?
    #
    #   end
    # end
  end

  # def each(&prc)
  #   i = 0
  #   while i < rows.length
  #     prc.call(rows[i])
  #     i += 1
  #   end
  #
  # end

end

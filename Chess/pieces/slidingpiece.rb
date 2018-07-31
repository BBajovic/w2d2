require 'byebug'

module SlidingPiece

  HORIZONTAL_DIRS = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0],
  ]

  DIAGONAL_DIRS = [
    [1, 1],
    [-1, -1],
    [1, -1],
    [-1, 1],
  ]


  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def moves
    possible_moves = []
    # byebug
    move_dirs.each do |x, y|
      possible_moves.concat(grow_unblocked_moves_in_dir(x, y))
    end
    possible_moves
  end



  private

  def move_dirs
    raise StandardError.new "Move dir should not be called from the module"
  end

  def grow_unblocked_moves_in_dir(dx, dy) #1, 1
    growing_moves = []
    legal = true
    current = pos
    while legal
      current= [current[0] + dx, current[1] + dy]
      #check if move off the board
      break unless current.first.between?(0, 7) && current.last.between?(0, 7)
      break if board[current].is_a?(Piece) && color == board[current].color
      if board.empty?(current)
        growing_moves << current
      elsif !board[current].is_a?(NullPiece) && color != board[current].color
        growing_moves << current
        break
      end


    end

    growing_moves
  end


end

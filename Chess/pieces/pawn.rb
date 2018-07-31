require_relative 'piece'

class Pawn < Piece

  attr_accessor :moved



  def symbol
    "P"
  end

  def move_dir

  end

  private

  def at_start_row?
    (pos[1] == 1 && color == :white) || (pos[1] == 6 && color == :black )
  end

  def forward_dir
    if color == :white
      return -1
    else
      return 1
    end
  end

  def forward_steps
    #pos[0 + forward_dir]

  end

  def side_attacks


  end


end

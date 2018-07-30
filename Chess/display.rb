require 'colorize'
require 'cursor'
require 'board'

class Display

  def initialize
    @cursor = Cursor.new([0,0], board)
  end

end

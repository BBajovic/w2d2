require 'colorize'
require_relative 'cursor'
require_relative 'board'
require 'byebug'

class Display

  attr_reader :board, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def test_move
    render
    while true
      cursor.get_input
      render
    end
  end

  def render
    # byebug
    arr = []
    (0..7).each {|el| arr << el + 1}
    puts "   #{arr.join("  ")}"
# byebug
    @board.rows.each_with_index do |row, index|
      row.each_with_index do |cell, idx|
        if [index, idx] == cursor.cursor_pos
          puts_cursor(index, idx, cell)
        elsif idx == 0
          print "#{index + 1} #{cell.to_s} "
        elsif idx.between?(1, 6)
          print "#{cell.to_s} "
        else
          print "#{cell.to_s} \n"
        end
      end
    end
  end

  def puts_cursor(index, idx, cell)
    if idx == 0
      print "#{index + 1} #{cell.to_s.green} "
    elsif idx.between?(1, 6)
      print "#{cell.to_s.green} "
    elsif idx == 7
      print "#{cell.to_s.green} \n"
    end
  end



end

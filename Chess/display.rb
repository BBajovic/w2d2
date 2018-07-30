require 'colorize'
require_relative 'cursor'
require_relative 'board'
require 'byebug'

class Display

  attr_reader :board

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    # byebug
    arr = []
    (0..7).each {|el| arr << el + 1}
    puts "   #{arr.join("  ")}"

    @board.rows.each_with_index do |row, index|
      row.each_with_index do |cell, idx|
        if idx == 0
          print "#{idx + 1} #{cell}"
        elsif idx.between?(1, 6)
          print "#{cell}"
        else
          print "#{cell}\n"
        end
      end
  end

end

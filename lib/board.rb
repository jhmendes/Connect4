require_relative 'board_space'
require_relative 'player'

class Board

  attr_accessor :board

  def initialize
    @board = []
    6.times.each do
      row = []
      7.times.each do
        row << BoardSpace.new
      end
      @board << row
    end
  end

  def rows
    @board
  end

  def add_turn(player, row_index, col_index)
   @board[row_index][col_index].player = player
 end


  def print
    board_print = ''
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
          spots << space.to_char
      end
      board_print << "| " + spots.join(' ') + " |\n"
    end
    board_print << "| 1 2 3 4 5 6 7 |"
    board_print
  end

  def empty_spaces?
    @board.each do |row|
      row.each do |space|
        return true if space.player.nil?
      end
    end
    return false
  end

  def winner?

  end

end



# require 'pry'
# binding.pry

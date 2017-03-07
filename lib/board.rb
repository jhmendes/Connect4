require 'pry'

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

  def add_turn(player, row_index, col_index)
   @board[row_index][col_index] = player
 end


  def print
    board_print = ''
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
        if space.player.nil?
          spots << space.player
        else
          spots << ' '
        end
      end
      board_print << "| " + spots.join(' ') + " |\n"
    end
    board_print << "| 1 2 3 4 5 6 7 |"
    board_print
  end

end

binding.pry

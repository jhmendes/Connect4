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

  def add_turn(player, col_index)
    if !@board[5][col_index].occupied?
      @board[5][col_index].player = player
    elsif @board[5][col_index].occupied? && !@board[4][col_index].occupied?
      @board[4][col_index].player = player
    elsif @board[4][col_index].occupied? && !@board[3][col_index].occupied?
        @board[3][col_index].player = player
    elsif @board[3][col_index].occupied? && !@board[2][col_index].occupied?
        @board[2][col_index].player = player
    elsif @board[2][col_index].occupied? && !@board[1][col_index].occupied?
        @board[1][col_index].player = player
    else
        @board[0][col_index].player = player
    end
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

  # def column_full?
  #   @board.each do |row|
  #     row.each do |space|
  #       if !space.player.nil?
  #         return true
  #       end
  #     end
  #   end
  #   return false
  # end

  def winner?
    horizonal_win? 
  end


  def horizonal_win?
    win_condition = []
    @board.each do |row|
      row.each do |space|
        if space.player.nil?
          win_condition << ''
        else
          win_condition << space.player.character
        end
      end
    end
    win_condition.join('').include?('RRRR') || win_condition.join('').include?('YYYY')
  end

  def vertical_win?
  #can't figure this out
  end



end

require 'spec_helper'

RSpec.describe Board do
  it 'is initialized with 6 rows and 7 columns' do
    board = Board.new
    expect(board.board.size).to eq(6)
    expect(board.board[0].size).to eq(7)
  end

    it 'prints out 6 rows and 7 columns and a footer' do

  board = Board.new
  board_printout =
  "|               |\n" +
  "|               |\n" +
  "|               |\n" +
  "|               |\n" +
  "|               |\n" +
  "|               |\n" +
  "| 1 2 3 4 5 6 7 |"

  expect(board.print).to eq(board_printout)
  end

  it 'adds a player to a space and prints out a board showing the taken space' do
    board = Board.new
    player = Player.new("john", "r")
    board.add_turn(player, 5, 3)
    board_printout =
    "|               |\n" +
    "|               |\n" +
    "|               |\n" +
    "|               |\n" +
    "|               |\n" +
    "|       r       |\n" +
    "| 1 2 3 4 5 6 7 |"

    expect(board.print).to eq(board_printout)
  end

  it 'has empty spaces if there are any empty spaces on the board' do
    board = Board.new
    expect(board.empty_spaces?).to eq(true)
  end


  it 'has no empty spaces if the entire board is occupied by a player' do
    board = Board.new
    player = Player.new("john", 'r')
      6.times.each do |row_index|
        7.times.each do |col_index|
          board.add_turn(player, row_index, col_index)
        end
      end
    expect(board.empty_spaces?).to eq(false)
  end

end

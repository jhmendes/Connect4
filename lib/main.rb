require_relative 'board'
require_relative 'player'
require_relative 'board_space'


board = Board.new

puts "Welcome to Connect 4!"
puts
puts "To get started, please enter each player name"
print "Player 1: "
player_1_name = gets.chomp
puts "Great, thanks #{player_1_name}!"
puts
print "Player 2: "
player_2_name = gets.chomp

while player_1_name == player_2_name
  puts "Sorry, #{player_1_name} already entered the game!"
  print "Please re-enter your name: "
  player_2_name = gets.chomp
end

puts "Awesome, thanks #{player_2_name}!"
puts
puts "Time to play!"

red_player = Player.new(player_1_name, 'R')
yellow_player = Player.new(player_2_name, 'Y')

players = [red_player, yellow_player].shuffle
turn_index = 0

#PLAY THE GAME

while !board.winner? && board.empty_spaces?
  puts "It is #{players[turn_index].name}'s turn!"

  puts "What column would you like to play?"
  col_index = gets.chomp.to_i

  if col_index >= 2
    col_index = col_index - 1
  else
    col_index = 0
  end

  while col_index < 0 || col_index >= 7
    puts "Sorry, that is an invalid column!"
    print "Please try again: "
    col_index = gets.chomp.to_i

    if col_index >= 2
      col_index = col_index - 1
    else
      col_index = 0
    end

  end

  board.add_turn(players[turn_index], col_index)

  if board.winner?
    puts "#{players[turn_index].character} wins!"
  end

  puts board.print
  turn_index = turn_index == 0 ? 1 : 0

end

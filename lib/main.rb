require_relative 'board'
require_relative 'player'
require_relative 'board_space'

# board = Board.new
# space = BoardSpace.new
# player = Player.new('john', 'r')
#
# board.add_turn(space.player, 5, 3)
#
# puts board.print

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


while !board.winner? && board.has_empty_spaces?
  #play the game!
end

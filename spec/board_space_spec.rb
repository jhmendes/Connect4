require 'spec_helper' #done!

RSpec.describe BoardSpace do
  it 'it is occupied if a player has played there' do
    space = BoardSpace.new
    space.player = Player.new("john", 'r')
    expect(space.occupied?).to be(true)
  end

  it 'is not occupied if a player has not played there' do
    space = BoardSpace.new
    expect(space.occupied?).to be(false)
  end

  it 'has a player if one is assigned to it' do
    player = Player.new("john", 'r')
    space = BoardSpace.new
    space.player = player
    expect(space.player).to eq(player)
  end

  it 'represents the player occupying it as a string' do
    player = Player.new('john', 'r')
    space = BoardSpace.new
    space.player = player
    expect(space.to_char).to eq('r')
  end

  it 'the space is nil if a player is not occupying it' do
    player = Player.new('john', 'r')
    space = BoardSpace.new
    expect(space.player).to eq(nil)
  end



end

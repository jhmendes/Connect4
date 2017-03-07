require 'spec_helper'

RSpec.describe Player do
  it 'is initialized with a player name and a character' do
    new_player = Player.new('John', 'r')
    expect(new_player.name).to eq("John")
    expect(new_player.character).to eq('r')
  end
end 

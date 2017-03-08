class BoardSpace

  attr_accessor :player, :character

  def initialize(player = nil)
    @player = player
  end

  def occupied?
    !@player.nil?
  end

  def to_char
    if @player
      "#{@player.character}"
    else
      " "
    end
  end

end

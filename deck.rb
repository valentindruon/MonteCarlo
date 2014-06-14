require_relative "CardEnums"
require_relative "Card"

class Deck
  attr_accessor :cards
  include CardEnums

  def initialize
    @cards = Array.new
    for color in CardEnums::COLORS
      for value in CardEnums::VALUES
        @cards << Card.new(value, color)
      end
    end
    @cards = @cards.shuffle
  end

end
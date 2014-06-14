class Player
  attr_accessor :cards

  def initialize
    @cards = Array.new
  end

  def draw_card(deck)
    @cards << deck.cards.shift
  end

  def calculate
    score = 0
    score += @cards.map {|c| c.value}.inject(0) {|sum, x| sum + x}
    score += (@cards.first.color == @cards.last.color) ? 20 : 0
  end
end
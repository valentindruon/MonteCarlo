class Croupier
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
    score += (@cards.first.color == @cards[1].color && @cards.first.color == @cards.last.color) ? 35 : 0
    score += (@cards.first.value == @cards[1].value && @cards.first.value == @cards.last.value) ? 999 : 0
  end
end
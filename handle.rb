require_relative "Croupier"
require_relative "Player"
require_relative "Deck"
require "parallel"

class Handle

  def launch
    bank = Croupier.new
    player_1 = Player.new
    player_2 = Player.new
    deck = Deck.new

    bank.draw_card(deck)
    player_1.draw_card(deck)
    player_2.draw_card(deck)
    bank.draw_card(deck)
    player_1.draw_card(deck)
    player_2.draw_card(deck)
    bank.draw_card(deck)

    bank_score = bank.calculate
    p1_score = player_1.calculate
    p2_score = player_2.calculate

    if bank_score >= p1_score && bank_score >= p2_score  
      $m_bank.synchronize do
        $bank_points += 1
      end
    else 
      $m_player.synchronize do
        $player_points += 1
      end
    end
  end
end
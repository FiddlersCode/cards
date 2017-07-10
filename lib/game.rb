require_relative 'player'
class Game
  attr_reader :deck, :player0, :player1, :player2, :player3

  def initialize
    @deck = [51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37,
      36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 
      20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
    @player0 = Player.new
    @player1 = Player.new
    @player2 = Player.new
    @player3 = Player.new
  end

  def deal_hand
    7.times {@player0.hand.push(@deck.shuffle!.pop)}
    7.times {@player1.hand.push(@deck.shuffle!.pop)}
    7.times{@player2.hand.push(@deck.shuffle!.pop)}
    7.times{@player3.hand.push(@deck.shuffle!.pop)}
  end
end

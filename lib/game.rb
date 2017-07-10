require 'player'
class Game
  attr_reader :deck, :player1, :player2, :player3, :player4

  def initialize
    @deck = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
    18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35,
    36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
    @player1 = Player.new
    @player2 = Player.new
    @player3 = Player.new
    @player4 = Player.new
  end

  def deal
    @player1.hand.push(deck.shuffle.pop)
  end

end

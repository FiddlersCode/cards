require 'game'
describe Game do
  let(:game) { Game.new }
  it 'expects the deck to contain 52 cards' do
    expect(game.deck.length).to eq 52
  end

  it 'expects the deck to be in order' do
    n = 0
    while n <= 51
      expect(game.deck[n]).to eq n
      n += 1
    end
  end

  # it 'expects the shuffle method to work' do
  #   game.deck.shuffle!
  #   n = 0
  #   while n <= 51
  #     expect(game.deck[n]).not_to eq n
  #     n += 1
  #   end
  # end


  describe 'deal' do
    before :each do
      game.deal_hand
    end
    it 'should deal 7 cards to each player' do
      expect(game.player0.hand.length).to eq 7
    end

    it 'should remove cards from the array when dealt' do
      expect(game.deck.length).to eq 24
    end

    it 'does not deal the same card to each player' do
      n = 0
      while n <= 6
        expect(game.player0.hand[n]).not_to eq (game.player1.hand[n]) || (game.player2.hand[n]) || (game.player3.hand[n])
        n += 1
      end
    end
  end
end

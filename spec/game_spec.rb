require 'game'
describe Game do
  let(:game) { Game.new }
  it 'expects the deck to contain 52 cards' do
    expect(game.deck.length).to eq 52
  end

  it 'expects the deck to be in order' do
    n = 51
    while n <= 0
      expect(game.deck[n]).to eq n
      n -= 1
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
      game.players do | player |
        expect(player.hand.length).to eq 7
      end
    end

    it 'should remove cards from the array when dealt' do
      expect(game.deck.length).to eq 24
    end
  end
end

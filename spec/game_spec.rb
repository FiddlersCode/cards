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

  it 'expects the shuffle method to work' do
    game.deck.shuffle!
    n = 0
    while n <= 51
      expect(game.deck[n]).not_to eq n
      n += 1
    end
  end
end
require 'game'
describe Game do
  let(:game) { Game.new }
  it 'expects the deck to contain 52 cards' do
    expect(game.deck.length).to eq 52
  end
end

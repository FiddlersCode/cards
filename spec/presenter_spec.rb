require 'presenter'

describe Presenter do
  let(:game) { Game.new }
  let(:presenter) { Presenter.new }

  describe 'suite' do
    it 'should know what suite a card is' do
      n = 0
      while n < 13
        expect(presenter.display(n)).to eq 'hearts'
        n += 1
      end
    end
  end
end

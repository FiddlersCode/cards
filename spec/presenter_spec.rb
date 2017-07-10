require 'presenter'

describe Presenter do
  let(:game) { Game.new }
  let(:presenter) { Presenter.new }

  describe 'suite' do
    it 'should know when a card is a heart' do
      n = 0
      while n < 13
        expect(presenter.display(n)).to eq 'hearts'
        n += 1
      end
    end

    it 'should know when a card is a club' do
      n = 13
      while n < 26
        expect(presenter.display(n)).to eq 'clubs'
        n += 1
      end
    end

    it 'should know when a card is a spade' do
      n = 26
      while n < 39
        expect(presenter.display(n)).to eq 'spades'
        n += 1
      end
    end

    it 'should know when a card is a diamond' do
      n = 39
      while n < 52
        expect(presenter.display(n)).to eq 'diamonds'
        n += 1
      end
    end
  end
end

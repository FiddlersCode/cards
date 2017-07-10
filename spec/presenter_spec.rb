require 'presenter'

describe Presenter do
  let(:game) { Game.new }
  let(:presenter) { Presenter.new }

  describe 'suite' do
    it 'should know when a card is a heart' do
      n = 0
      while n < 13
        expect(presenter.display(n)).to include 'hearts'
        n += 1
      end
    end

    it 'should know when a card is a club' do
      n = 13
      while n < 26
        expect(presenter.display(n)).to include 'clubs'
        n += 1
      end
    end

    it 'should know when a card is a spade' do
      n = 26
      while n < 39
        expect(presenter.display(n)).to include 'spades'
        n += 1
      end
    end

    it 'should know when a card is a diamond' do
      n = 39
      while n < 52
        expect(presenter.display(n)).to include 'diamonds'
        n += 1
      end
    end
  end

  describe 'number' do
    it 'should know when a card is an ace' do
      n = 0
      while n < 40
        expect(presenter.display(n)).to include 'ace'
        n += 13
      end
    end

    it 'should know when a card is a two' do
      n = 1
      while n < 41
        expect(presenter.display(n)).to include 'two'
        n += 13
      end
    end

    it 'should know when a card is a three' do
      n = 2
      while n < 42
        expect(presenter.display(n)).to include 'three'
        n += 13
      end
    end

    it 'should know when a card is a four' do
      n = 3
      while n < 43
        expect(presenter.display(n)).to include 'four'
        n += 13
      end
    end

    it 'should know when a card is a five' do
      n = 4
      while n < 44
        expect(presenter.display(n)).to include 'five'
        n += 13
      end
    end

    it 'should know when a card is a six' do
      n = 5
      while n < 45
        expect(presenter.display(n)).to include 'six'
        n += 13
      end
    end

    it 'should know when a card is a seven' do
      n = 6
      while n < 46
        expect(presenter.display(n)).to include 'seven'
        n += 13
      end
    end

    it 'should know when a card is a eight' do
      n = 7
      while n < 47
        expect(presenter.display(n)).to include 'eight'
        n += 13
      end
    end

    it 'should know when a card is a nine' do
      n = 8
      while n < 48
        expect(presenter.display(n)).to include 'nine'
        n += 13
      end
    end

    it 'should know when a card is a ten' do
      n = 9
      while n < 49
        expect(presenter.display(n)).to include 'ten'
        n += 13
      end
    end

    it 'should know when a card is a jack' do
      n = 10
      while n < 50
        expect(presenter.display(n)).to include 'jack'
        n += 13
      end
    end

    it 'should know when a card is a queen' do
      n = 11
      while n < 51
        expect(presenter.display(n)).to include 'queen'
        n += 13
      end
    end

    it 'should know when a card is a king' do
      n = 12
      while n < 52
        expect(presenter.display(n)).to include 'king'
        n += 13
      end
    end
  end
end

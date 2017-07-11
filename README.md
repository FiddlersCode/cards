# Card Program
by Paula Muldoon

---

## Run locally
Clone the repo. Then:

```bash
bundle install
```
#### To run the tests
```bash
rspec
```

[Diagram](https://drive.google.com/file/d/0B1tialTcWTRJV0pqdURwam03VXM/view?usp=sharing)

---
## Processes
* TDD

---
## Technologies used

* [Ruby 2.4.0](https://www.ruby-lang.org/en/)
* [RSpec](http://rspec.info/)

## Instructions
(Done in Ruby)

PHP Developer Task

This task is to create simple class files to showcase your PHP programming skills. Where you would normally want to produce the least amount of code to achieve a given task, this is a special case where we are looking to see the range of your abilities.

Therefore:
Feel free to implement your solution in an elaborate fashion. Showcase your skills in object-orientation and design patterns, for example, but please do feel free to showcase skillset in other programming or PHP related abilities.
Include your tests. We would like to see your development approach, whether you have built this in a test-driven way, or not.

## Specs
The scenario is as follows:
You have a deck of 52 cards, comprised of 4 suits (hearts, clubs, spades and diamonds) each with 13 values (Ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen and king).
There are four players waiting to play around a table.
The deck arrives in perfect sequence (so, ace of hearts is at the bottom, two of hearts is next, etc. all the way up to king of diamonds on the top).

The task is a simple one. Please create a simple command line program that when executed recreates the scenario above and then performs the following two actions:
Shuffle the cards  - We would like to take the deck that is in sequence and shuffle it so that no two cards are still in sequence.
Deal the cards - We would then like to deal seven cards to each player (one card to the each player, then a second card to each player, and so on)

There is no need to necessarily do this in a visual way (for example, simply proving with a test that your deck is shuffled and that the players do now have seven cards will be sufficient)

## Notes
I did not include a test for the `shuffle` method as this is a Ruby core method and thus can be trusted to be stable.  

A test for this could look like:
```
it 'expects the shuffle method to work' do
  game.deck.shuffle!
  n = 0
  while n <= 51
    expect(game.deck[n]).not_to eq n
    n += 1
  end
end
```

This test passes randomly, because the shuffle method does not necessarily alter every single item in the array.  
However, I believe that in the context of a poker game, `shuffle` is sufficiently randomised.  I could of course stub
this test to return a specific type of shuffled array, but this test would be vacuous.

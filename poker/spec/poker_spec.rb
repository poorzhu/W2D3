require "rspec"
require "card"
require "deck"
require "player"
require "hand"
require "game"

describe Card do
  subject(:card) { Card.new(1, :Spades) }

  describe "#initialize" do
    it "should have a value and a suit" do
      expect([card.value, card.suit]).to eq([1, :Spades])
    end
  end
end


describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "should create an array of 52 Cards" do
      expect(deck.size).to eq(52)
    end
  end

  describe "#take_card" do
    it "should return the top most card" do
      expect(deck.take_card).to be_a(Card)
    end

    it "should reduce the deck size by 1" do
      deck.take_card
      expect(deck.size).to eq(51)
    end
  end

  # it "should shuffle the deck" do
  #   expect(deck.shuffle).to
  # end

end


describe Hand do
  subject(:hand) { (Hand.new }

  describe "#initialize" do
    expect(hand)
  end


end
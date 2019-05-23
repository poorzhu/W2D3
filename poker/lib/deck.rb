require_relative "card.rb"

class Deck
  SUITS = [ :Clubs, :Spades, :Diamonds, :Hearts ]
  VALUES = (1..13).to_a

  def initialize
    @cards = []
    populate
    @cards.shuffle!
  end

  def populate
    VALUES.each do |value|
      SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
  end

  def size
    @cards.length
  end

  def take_card
    @cards.pop
  end
end
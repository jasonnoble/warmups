require_relative 'card'

class Deck
  def initialize
    @cards = []
    # For each suit, and each value combo
    # Add a new card to the cards array
    Card.suits.each do |suit|
      Card.values.each do |value|
        @cards.push(Card.new(suit, value))
      end
    end
    shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    if @cards.length > 0
      @cards.pop
    else
      "NO MOAR CARDS"
    end
  end

  def sort!
    @cards.sort!
  end

  def to_s
    if @cards.length > 0
      @cards.join(',')
    else
      "Empty Deck"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  deck = Deck.new
  53.times do
    puts deck.deal
  end
  puts deck
  deck.sort!
  puts deck
end

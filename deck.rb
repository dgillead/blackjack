class Deck
  attr_accessor :cards

  def initialize
    @cards = ['A', 'A', 'A', 'A',
              1, 1, 1, 1,
              2, 2, 2, 2,
              3, 3, 3, 3,
              4, 4, 4, 4,
              5, 5, 5, 5,
              6, 6, 6, 6,
              7, 7, 7, 7,
              8, 8, 8, 8,
              9, 9, 9, 9,
              10, 10, 10, 10,
              10, 10, 10, 10,
              10, 10, 10, 10,
              10, 10, 10, 10]
  end

  def get_card
    card = @cards.shuffle.pop
    @cards.delete_at(@cards.index(card) || @cards.length)
    card
  end

end

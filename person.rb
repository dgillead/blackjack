class Person

  attr_reader :total_score, :cards

  def initialize
    @total_score = 0
    @cards = []
  end

  def hit(points)
    num_of_a = 0
    if points == 'A'
      num_of_a += 1
    else
      @total_score += points
    end
    @cards.push(points)
  end

  def check_score
    total = total_score + 11
    if total > 21
      total = total - 10
    end
    total
  end
end
